package com.alexandrecampos.webapp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String form = "<form method=\"post\">\n" + "		Usuario: <input type=\"text\" name=\"usuario\"> <br>\n"
				+ "		Senha: <input\n" + "			type=\"text\" name=\"senha\"> <br>\n"
				+ "		<button type=\"submit\" name=\"submit\">Entrar</button>\n"
				+ "		<button type=\"reset\">Reset</button>\n" + "	</form>";
		response.getWriter().append("<h1>Tela de Login</h1>").append(form);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Indica que a nossa resposta e do tipo html
		response.setContentType("text/html");

		String senha = request.getParameter("senha");
		String usuario = request.getParameter("usuario");

		String senhaEsperada = "admin";
		String usuarioEsperado = "admin";

		if (senhaEsperada.equals(senha) && usuarioEsperado.equals(usuario)) {
			// Usuario foi validado
			response.getWriter().append("<h3>Bem vindo, " + usuario + "</h3>").append("Login efetuado com sucesso.");

		} else {

			// Anexar mensagem de erro.
			response.getWriter()
					.append("<span style=\"color: red;\">Usuário ou senha inválidos. Tente novamente.</span>");

			// Anexar o titulo e o formulario, igual foi feito no metodo get.
			doGet(request, response);
		}

	}

}
