package br.com.trocaairsoft.entity;

import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

/**
 * 
 * @author andre.gomes
 *
 */
@Component
@Entity
@Table(name="ANUNCIANTE")
public class AnuncianteEntity {
	
	@Id
    @Column(name="ID_ANUNCIANTE")
	private Integer idAnunciante;
	
	@Column(name="TIPO_ANUNCIANTE")
	private String tipoAnunciante;
	
	@Column(name="NOME")
	private String nome;
	
	@Column(name="CPF")
	private BigInteger cpf;
	
	@Column(name="SEXO")
	private String sexo;
	
	@Column(name="CNPJ")
	private BigInteger cnpj;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="TELEFONE_FIXO")
	private BigInteger telefoneFixo;
	
	@Column(name="TIPO_CELULAR")
	private BigInteger telefoneCelular;
	
	@Column(name="SENHA")
	private String senha;
	
	
	
	
	//GETTERS e SETTERS
	public Integer getIdAnunciante() {
		return idAnunciante;
	}
	public void setIdAnunciante(Integer idAnunciante) {
		this.idAnunciante = idAnunciante;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTipoAnunciante() {
		return tipoAnunciante;
	}
	public void setTipoAnunciante(String tipoAnunciante) {
		this.tipoAnunciante = tipoAnunciante;
	}
	public BigInteger getCpf() {
		return cpf;
	}
	public void setCpf(BigInteger cpf) {
		this.cpf = cpf;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public BigInteger getCnpj() {
		return cnpj;
	}
	public void setCnpj(BigInteger cnpj) {
		this.cnpj = cnpj;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public BigInteger getTelefoneFixo() {
		return telefoneFixo;
	}
	public void setTelefoneFixo(BigInteger telefoneFixo) {
		this.telefoneFixo = telefoneFixo;
	}
	public BigInteger getTelefoneCelular() {
		return telefoneCelular;
	}
	public void setTelefoneCelular(BigInteger telefoneCelular) {
		this.telefoneCelular = telefoneCelular;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
}
