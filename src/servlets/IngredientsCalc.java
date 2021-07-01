package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AlteEinkaufsliste;
import beans.Calculator;
import beans.Einkaufsliste;

/**
 * Servlet implementation class DoCalculation
 */
@WebServlet("/IngredientsCalc")
public class IngredientsCalc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	private void doGetOrPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// Bean erzeugen und im Request-Scope ablegen
		
		Einkaufsliste liste= new Einkaufsliste();
		AlteEinkaufsliste alteliste= new AlteEinkaufsliste();
		request.setAttribute("liste", liste);
		
		

		// Parameter einlesen
		liste.setAllIngr(alteliste.getAlteIngr());
		//liste.setNew(request.getParameter("newIngr"));
		
		liste.setNews(request.getParameterValues("newIngr"));
		
		

		// An korrekte Folgeseite weiterleiten
	
		
		

	
		request.getServletContext().getRequestDispatcher("/Z30.06.jsp").forward(request, response);
	
	}
			
	


		

	

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGetOrPost(request, response);
	}
	


	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGetOrPost(request, response);
	}

}
