package br.com.trocaairsoft.exception;


/**
 * 
 * @author andre.gomes
 *
 */
public class BusinessException extends Exception {
	
	private static final long serialVersionUID = 1L;
	private String msg;
	
	public BusinessException(String msg){
	      super(msg);
	      this.setMsg(msg);
	    }

	
	
	//GETTERS E SETTERS
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	} 
	
}