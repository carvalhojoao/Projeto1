package Commands;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Pais;
import service.PaisService;

public class CriarPais implements Command{

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String pId = request.getParameter("id");
		String pNome = request.getParameter("nome");
		String pPopulacao = request.getParameter("populacao");
		String pArea = request.getParameter("area");

		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}

		Pais pais = new Pais();
		pais.setId(id);
		pais.setNome(pNome);
		if (pPopulacao != null && !pPopulacao.equals("")) {
			pais.setPopulacao(Long.parseLong(pPopulacao));
		}
		if (pArea != null && !pArea.equals("")) {
			pais.setArea(Double.parseDouble(pArea));
		}

		PaisService ps = new PaisService();
		HttpSession session = request.getSession();
		ps.criar(pais);
		ArrayList<Pais> lista = new ArrayList<>();
		lista.add(pais);
		session.setAttribute("lista", lista);
		RequestDispatcher view = request.getRequestDispatcher("ListarPaises.jsp");

		view.forward(request, response);
	}

	
}
