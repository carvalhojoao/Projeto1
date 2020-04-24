package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Pais;
import service.PaisService;

/**
 * Servlet implementation class ManterPaisController
 */
@WebServlet("/ManterPais.do")
public class ManterPaisController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pNome = request.getParameter("nome");
        String pPopulacao = request.getParameter("populacao");
        String pArea = request.getParameter("area");
        
        //instanciar o javabean
        Pais pais = new Pais();
        pais.setNome(pNome);
        if(!pPopulacao.equals("")){
        	pais.setPopulacao(Long.parseLong(pPopulacao));
		}
        if(!pArea.equals("")){
        	pais.setArea(Double.parseDouble(pArea));
        }
        //instanciar o service
        PaisService ps = new PaisService();
        ps.criar(pais);
        pais = ps.carregar(pais.getId());
        
        //enviar para o jsp
        request.setAttribute("modelo", pais);
        
        RequestDispatcher view = 
        request.getRequestDispatcher("ExibirPais.jsp");
        view.forward(request, response);
	}

}
