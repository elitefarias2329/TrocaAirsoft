package br.com.trocaairsoft.action;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.HibernateException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.trocaairsoft.business.LoginBO;
import br.com.trocaairsoft.exception.BusinessException;
import br.com.trocaairsoft.utils.Utils;
import br.com.trocaairsoft.vo.LoginVO;
import br.com.trocaairsoft.vo.RetornoAjaxVO;

import com.opensymphony.xwork2.ActionSupport;


/**
 * 
 * @author andre.gomes
 *
 */
@Controller
public class LoginAction extends ActionSupport implements SessionAware {
	
	private static final long serialVersionUID = 1L;
	private static final String USUARIO_LOGADO = "usuarioLogado";
	
	Logger logger = LoggerFactory.getLogger(LoginAction.class);
	
	private static final String AJAX = "ajax";
	
	private Map<String, Object> sessionMap;
	
	private LoginVO vo;
	private RetornoAjaxVO retornoAjax;
	
	@Autowired
	private LoginBO loginBo;
	
	
	/**
	 * Construtor
	 */
	public LoginAction(){}
	
	
	/**
	 * 
	 * @return
	 */
	public String login(){
		
		retornoAjax = new RetornoAjaxVO();
		
		try {
			validaLogin(vo);
			retornoAjax.setObjetoRetornado(loginBo.login(vo));
			retornoAjax.setTipoRetornado(SUCCESS);
			sessionMap.put(USUARIO_LOGADO, vo.getUsuarioLogado());
		} 
		catch (BusinessException e) {
			logger.error(e.getMessage());
			retornoAjax.setTipoRetornado(ERROR);
			retornoAjax.setExceptionRetornada(e.getMessage());
		}
		catch (HibernateException e) {
			logger.error(e.getMessage());
			retornoAjax.setTipoRetornado(ERROR);
			retornoAjax.setExceptionRetornada("Erro na comunicação com o banco de dados.");
		}
		return AJAX;
	}
	
	/**
	 * 
	 * @return
	 */
	public String logout(){
		sessionMap.remove(USUARIO_LOGADO);
		return SUCCESS;
	}
	
	
	/**
	 * 
	 * @return
	 */
	private void validaLogin(LoginVO vo) throws BusinessException{
	
		StringBuilder msgErros = new StringBuilder("");
		
		if(StringUtils.isBlank(vo.getEmail())){
			msgErros.append(getText("login.email.obrigatorio"));
		}
		else{
			
			if(!Utils.validarEmail(vo.getEmail())){
				msgErros.append(getText("login.email.valido"));	
			}
		}
		
		if(StringUtils.isBlank(vo.getSenha())){
			msgErros.append(getText("login.senha.obrigatorio"));
		}
		
		if(!StringUtils.isBlank(msgErros.toString())){
			throw new BusinessException(msgErros.toString());
		}
	}
	
	
	//GETTERS E SETTERS
	public LoginVO getVo() {
		return vo;
	}

	public void setVo(LoginVO vo) {
		this.vo = vo;
	}

	@Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

	public Map<String, Object> getSession() {
		return sessionMap;
	}


	public RetornoAjaxVO getRetornoAjax() {
		return retornoAjax;
	}


	public void setRetornoAjax(RetornoAjaxVO retornoAjax) {
		this.retornoAjax = retornoAjax;
	}

}