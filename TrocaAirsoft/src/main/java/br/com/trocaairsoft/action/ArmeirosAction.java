package br.com.trocaairsoft.action;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;


/**
 * 
 * @author andre.gomes
 *
 */
@Controller
public class ArmeirosAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;



	/**
	 * Construtor
	 */
	public ArmeirosAction(){
		
	}
	
	
	
	/**
	 * 
	 * @return
	 */
	public String load(){
		return SUCCESS;
	}
	
	
	

}
