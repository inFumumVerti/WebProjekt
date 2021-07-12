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
import beans.RezeptVorschau;

/**
 * Servlet implementation class DoCalculation
 */
@WebServlet("/IngredientsCalc")
public class IngredientsCalc extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Einkaufsliste liste= new Einkaufsliste();
    RezeptVorschau rezept=new RezeptVorschau();
    
    

    private void doGetOrPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("rezept", rezept);
        request.setAttribute("liste", liste);
        
    
        
        String goTo=request.getParameter("goTo");

        
        if(request.getParameter("calc").equals("true")) {
            liste.setNewIngr(request.getParameterValues("newIngr"));
            liste.setNewMenge(request.getParameterValues("newMenge"));
            liste.setNewEinheit(request.getParameterValues("newEinheit"));}
            
        
        
        else if(goTo.equals("/RezeptVorschau2.jsp")) {
                
            rezept.setRezeptID(request.getParameter("vorschau"));
            }
        

        
        
        liste.setNewResult(); 
        
        request.getServletContext().getRequestDispatcher(goTo).forward(request, response);
        
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