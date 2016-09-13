package br.com.trocaairsoft.action;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.trocaairsoft.business.AnuncianteBO;

import com.opensymphony.xwork2.ActionSupport;


/**
 * 
 * @author andre.gomes
 *
 */
@Controller
public class AnuncianteAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	@Autowired
	AnuncianteBO bo;
	
	
	/**
	 * Construtor
	 */
	public AnuncianteAction(){
		
	}
	
	/**
	 * 
	 * @return
	 */
	public String loadCriarConta(){
		
		try {
			return SUCCESS;
		} 
		catch (Exception e) {
			System.out.println(e.getMessage());
			return ERROR;
		}
		
		
		
	}
	
	
	

}
