package br.com.trocaairsoft.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

/**
 * Classe: RetornoAjaxVO
 * Objetivo: Representa o objeto que ser� retornado nas chamadas AJAX.
 * @author andre.gomes
 */
@Component
public class RetornoAjaxVO implements Serializable {

	//---> Atributos

	private static final long serialVersionUID = -1;

	private String  tipoRetornado;
	private Integer quantidadeRetornada;
	private Object  objetoRetornado;
	private String  exceptionRetornada;
	
	//---> Construtores

	/**
	 * Construtor da classe abstrata RetornoAjaxVO
	 */
	public RetornoAjaxVO() {
		super();
	}

	//---> Getters e Setters

	/**
	 * M�todo getTipoRetornado
	 * Retorna o campo tipoRetornado
	 * @return  RetornoAjaxVO
	 */
	public String getTipoRetornado() {
		return tipoRetornado;
	}

	/**
	 * M�todo setTipoRetornado
	 * Insere um valor no campo tipoRetornado
	 * @param  tipoRetornado String
	 */
	public void setTipoRetornado(String tipoRetornado) {
		this.tipoRetornado = tipoRetornado;
	}

	/**
	 * M�todo getObjetoRetornado
	 * Retorna o campo objetoRetornado
	 * @return  RetornoAjaxVO
	 */
	public Object getObjetoRetornado() {
		return objetoRetornado;
	}

	/**
	 * M�todo setObjetoRetornado
	 * Insere um valor no campo objetoRetornado
	 * @param  objetoRetornado Object
	 */
	public void setObjetoRetornado(Object objetoRetornado) {
		this.objetoRetornado = objetoRetornado;
	}

	/**
	 * M�todo getQuantidadeRetornada
	 * Retorna o campo quantidadeRetornada
	 * @return  RetornoAjaxVO
	 */
	public Integer getQuantidadeRetornada() {
		return quantidadeRetornada;
	}

	/**
	 * M�todo setQuantidadeRetornada
	 * Insere um valor no campo quantidadeRetornada
	 * @param  quantidadeRetornada Integer
	 */
	public void setQuantidadeRetornada(Integer quantidadeRetornada) {
		this.quantidadeRetornada = quantidadeRetornada;
	}

	/**
	 * M�todo getExceptionRetornada
	 * Retorna o campo exceptionRetornada
	 * @return  RetornoAjaxVO
	 */
	public String getExceptionRetornada() {
		return exceptionRetornada;
	}

	/**
	 * M�todo setExceptionRetornada
	 * Insere um valor no campo exceptionRetornada
	 * @param  exceptionRetornada String
	 */
	public void setExceptionRetornada(String exceptionRetornada) {
		this.exceptionRetornada = exceptionRetornada;
	}
}