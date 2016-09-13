package br.com.trocaairsoft.action;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.trocaairsoft.business.LoginBO;
import br.com.trocaairsoft.exception.BusinessException;
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
	private static final String AJAX = "ajax";
	
	private Map<String, Object> sessionMap;
	private LoginVO vo;
	
	@Autowired
	private LoginBO loginBo;
	
	@Autowired
	private RetornoAjaxVO retornoAjax;
	
	
	/**
	 * Construtor
	 */
	public LoginAction(){
		
	}
	
	
	
	public String inicio(){
		return SUCCESS;
	}
	
	/**
	 * 
	 * @return
	 */
	public String login(){
		
		try {
			validaLogin(vo);
			retornoAjax.setObjetoRetornado(loginBo.login(vo)); //chamar funcao de login
			retornoAjax.setTipoRetornado(SUCCESS);
			sessionMap.put("usuarioLogado", vo.getUsuarioLogado());
		} 
		catch (BusinessException e) {
			//TODO: IMPLEMENTAR LOGGER
			retornoAjax.setTipoRetornado(ERROR);
			retornoAjax.setExceptionRetornada(e.getMessage());
		}
		catch (HibernateException e) {
			//TODO: IMPLEMENTAR LOGGER
			retornoAjax.setTipoRetornado(ERROR);
			retornoAjax.setExceptionRetornada("Erro na comunicação com o banco de dados.");
		}
		return AJAX;
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
//		else{
//			msgErros.append(getText("login.email.valido"));
//			//TODO: VALIDAR EMAIL
//			
//		}
		
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
	
	
	

}
