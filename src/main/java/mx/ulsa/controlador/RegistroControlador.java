package mx.ulsa.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class RegistroControlador
 */
public class RegistroControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegistroControlador() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		System.out.println(username+" "+ password);

		request.setAttribute("errorMessage", "Usuario creado");
		request.getRequestDispatcher("vista/login.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}

