package servlets2;





import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SaveRecipe")
			
public class SaveRecipe extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 12L;
	 File update_log = null;
     final String fileName = "my_updates.html";

	public void init() {
		System.err.println("HalloDuDaServlet wurde initialisiert.");
		
		 String file_path = getServletContext().getRealPath(fileName);
         update_log = new File(file_path);
         if (!update_log.exists()) {
             try {
                 update_log.createNewFile();
             } catch (IOException e) {
                 e.printStackTrace();
                 System.out.println("Error while creating file : " + fileName);
             }
         }
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		String name = request.getParameter("Rezeptname");
		String kategorie = request.getParameter("Kategorie");
		String dauer = request.getParameter("dauer");
		String minSt = request.getParameter("minSt");
		String beschreibung = request.getParameter("Beschreibung");
		
		
		String[] tag =request.getParameterValues("tag");
		String[] Zutat =request.getParameterValues("Zutat");
		String[] Menge =request.getParameterValues("Menge");
		String[] Einheit =request.getParameterValues("Einheit"); 
		
		
		String allTag="";
		if(tag.length>1) {
		for(int i=0;i<tag.length;i++) {
			allTag=allTag+tag[i];
		}
		}
		
	
		
    	PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"NewRecipe3CSSStyle.css\">");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<title>Danke!</title>");
		out.println("</head>");
		out.println("<body>");
		
		
	
		
			
		out.println("<p><form action='NewRecipe3.jsp'>");
		out.println("<button class=\"btn-hover color-1\" style=\"width: 250px !important;\">Noch ein Rezept erstellen</button>");
		out.println("</form></p>");
		out.println("<p><form action='HomePageTry54.jsp'>");
		out.println("<button class=\"btn-hover color-1\" style=\"width: 250px !important;\">Homepage</button>");
		out.println("</form></p>");
		
		out.println("<p><form action='Z30.06.jsp'>");
		out.println("<button class=\"btn-hover color-1\" style=\"width: 250px !important;\">Kategorien</button>");
		out.println("</form></p>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
		
		

		File dbKategorie;
		
		switch(kategorie) {
		case "Kategorie A": 
			 dbKategorie= new File ( "C:\\Users\\Admin\\git\\WebProjekt\\WebContent\\DB-KategorieF.html");
			break;
		case "Kategorie B": 
			 dbKategorie= new File ( "C:\\Users\\Admin\\git\\WebProjekt\\WebContent\\DB-KategorieY.html");
			 break;
		default:  dbKategorie= new File ( "C:\\Users\\Admin\\git\\WebProjekt\\WebContent\\DB-KategorieZ.html");
	

		
		
		
		
		
		}
		
		
	
		//Die Directory sollte unbedingt zur einer relative Directory geändert werden
		//File dbKategorieX= new File ( "C:\\\\Users\\\\z0047ynv\\\\eclipse-workspace\\WebEngProject\\WebContent\\DB-KategorieX.html");
		Writer writer = new FileWriter(dbKategorie, true);
		
		
	
		writer.write("\n\n<table id=\"@"+name+allTag+"\">\r\n"
				+ "<tr><td class=\"ee\">"+name+"</td><td></td></tr>\r\n"
				+ "<tr><td>Zubereitungsdauer</td><td>"+dauer+" Min </td></tr>\r\n"
				+ "<tr><td  colspan=\"2\" class= \"zu\"><table>\r\n"
				+ "							<tr><td width=\"100\" colspan=\"2\">Zutaten A</td></tr>\r\n");
		
		
		for (int i=0;i<Zutat.length;i++) {
		writer.write(                       "<tr><td>"+Zutat[i]+"</td><td>"+Menge[i]+" "+Einheit[i]+"</td></tr>\r\n");
		}
		
		
			
				
				
				writer.write( "					</table>\r\n"
				+ "									</td></tr>\r\n"
				+ "<tr><td class=\"tag\" colspan=\"2\"><table>\r\n");
				for (int i=0;i<tag.length;i++) {
				
		writer.write( "										<tr><td>"+tag[i]+"</td>\r\n");
		}
		writer.write("										</tr>\r\n"
				+ "								</table>\r\n"
				+ "</td></tr>\r\n"
				+ "<tr><td colspan=\"2\"  class= \"be\" id=\"about\"> <h1>Beschreibung</h1>"+beschreibung+"</td></tr>\r\n");
				
		for (int i=0;i<Zutat.length;i++) {
		writer.write(                       "<tr><td class=\"ser\"><input type=\"hidden\"   name=\"newIngr\" value=\""+Zutat[i]+"\"></td></tr>\r\n");
		}
	
				
		writer.write(  	 "</table> \r\n\n\n");
		 
		writer.close();

                
                 

	}

        


         



 
		
    
	
}
