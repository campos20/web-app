package com.alexandrecampos.webapp.bean;

import java.io.Serializable;

// Java Bean. Classe java com atributos privados, porem com metodos get e set,
// construtor padrao vazio, serializavel
public class LoginBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String usuario;
	private String senha;

	// Construtor padrao vazio
	public LoginBean() {
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	// Nao faz parte do bean, e um adendo.
	// Valida se o usuario digitado e igual ao usuario esperado. Tambem a senha.
	public boolean isValid() {
		String usuarioEsperado = "admin";
		String senhaEsperada = "admin";
		
		return usuarioEsperado.equals(usuario) && senhaEsperada.equals(senha);
	}
}
