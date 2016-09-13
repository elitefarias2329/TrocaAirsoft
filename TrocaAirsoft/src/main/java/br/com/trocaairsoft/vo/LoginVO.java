package br.com.trocaairsoft.vo;

import java.io.Serializable;


/**
 * 
 * @author andre.gomes
 *
 */
public class LoginVO implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String email;
	private String senha;
	private Object usuarioLogado;
	
	//GETTERS E SETTERS
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public Object getUsuarioLogado() {
		return usuarioLogado;
	}
	public void setUsuarioLogado(Object usuarioLogado) {
		this.usuarioLogado = usuarioLogado;
	}

}