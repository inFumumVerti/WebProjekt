<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<link rel="stylesheet" type="text/css" href="Z55.css">
</head>
<body>
<script type="text/javascript">
var req = new XMLHttpRequest();


req.onreadystatechange=function (){
	if(req.readyState==4){
		if(req.status==200){
	
			
			var searchId ='.'; // Gesuchte ID-Rezept
			str='\u003ctable[^\0@]*@*'+searchId+'[^\0i]*[^@]*\u002ftable\u003e';	 // regex für ID-Rezept
			var reg= new RegExp(str, 'g');
			rezepte=req.responseText.match(reg); // suche naach dem ID-Rezept
			
			if(rezepte!=null){ // prüfung, ob das vohanden ist 
			
			for(n=0;n<rezepte.length; n++){ // es können mehrere Rezepte der Suche entsprechen
			var my_div = newDiv = null;
			var newDiv = document.createElement("div"); // für jeden Rezept wird ein neues Kontainer erstellt und mit den Daten aus der Datenbank befüllt
	        newDiv.innerHTML = '<div id="rezeptBlock" class="rezepte"> <form action="IngredientsCalc" method="get">	<table border="1"  ><tr> <td  align="center" width="100"> Bild</td><td id="tdRezept" >'+rezepte[n]+'</td>		<td valign="bottom"> <input name="addToList" class="add" type="submit" value="+"></td>	</tr></table> </form>';
			my_div = document.getElementById("out");
	    	my_div.appendChild(newDiv);
	    	
	    	
	    	
	    
			
			}
			
			var beschreibung = document.getElementsByClassName("be"); // Rezeptzubereitung ausblenden
	    	
	    	for (i=0; i<beschreibung.length; i++){
	    		beschreibung[i].innerHTML ="" ;
	    	}
	    	
	    	var zutatenliste = document.getElementsByClassName("zu"); // Zutatenliste ausblenden
	    	for (i=0; i<zutatenliste.length; i++){
	    		zutatenliste[i].innerHTML ="" ;
	    	}
			
			
			var zutatenServlet = document.getElementsByClassName("ser"); // Zutaten für Servlet-Bearbeitung ausblenden
	    	for (i=0; i<zutatenServlet.length; i++){
	    		//zutatenServlet[i].innerHTML ="" ;
	    	}
			
			}else{ // wenn keine ID-Rezept vorhanden ist....
				var my_div = newDiv = null;
				var newDiv = document.createElement("div");
		        newDiv.innerHTML = ":(";
				my_div = document.getElementById("out");
		    	my_div.appendChild(newDiv);
				}
			
			
				
			}
		if (req.status==404){
			console.log('File or resource not found');
		}
	}

};


req.open('GET', 'DB-KategorieE.html', true);



req.send();

	
</script>
	<header>
		<div id="navigation">
			<form>
				<table>

					<tr>
						<td><button class="btn-hover color-8">Fleisch</button></td>
						<td><button class="btn-hover color-8">Vegetarisch</button></td>
						<td><button class="btn-hover color-8">Vegan</button></td>
						
					

					
						<td><button class="btn-hover color-8">Nudeln</button></td>
						<td><button class="btn-hover color-8">Reis</button></td>
						<td><button id="rezept-button" class="btn-hover color-8"
								formaction="NewRecipe3.jsp">+Rezept</button></td>
						<td rowspan="2"><div class="form__group field">
								<input type="text" class="form__field" placeholder="Search"
									name="search" id='search'> <label for="search"
									class="form__label">Search...</label>
							</div></td>
					</tr>

				</table>

			</form>
		</div>
	</header>


	<main>
	<table >
		<tr><td><h2>Kategoriename</h2></td><td><img id="bild" src="https://image.flaticon.com/icons/png/128/590/590510.png" alt="Einkaufsliste" width="40px" height="40px"></td></tr>
<tr>
<td width="600" valign="top">
<div class="scrollPage" id="out" >
</div>
</td>

<td width="200" valign="top" align="left"><div id="einkaufdiv">

<div id="innereinkauf" >



	<jsp:useBean id="liste" class="beans.Einkaufsliste" scope="session"/>
	
		
	   <jsp:useBean id="alteEinkaufsliste" class="beans.AlteEinkaufsliste" scope="session"/>
	   
	   <c:if test="${(fn:length(liste.allIngr)) > 0}" >
	   			<jsp:setProperty property="news" name="alteEinkaufsliste" value="${liste.allIngr}"/>
	   </c:if>
	
	
		<div id="checklist">
		
	<c:if test="${(fn:length(alteEinkaufsliste.alteIngr)) > 0}" >	
		<% int counter=0; %>
			
	   			<c:forEach items="${alteEinkaufsliste.alteIngr}" var="el">
	   			<% if( counter<15){ %>
	   			<% counter++; %>
	   			
	   			<input type="checkbox" ><label ><c:out value="${el}"/></label> 
	   			
	   			<% } %>
	   			
					
					
				
	   			</c:forEach>
	   			
	   			
		</c:if>
	
	</div>


 </div>
<div class="cont">	
<button id="hinzu" type="button" class="btn"><span id="span">Einkaufsliste erstellen</span><img src="https://i.cloudup.com/2ZAX3hVsBE-3000x3000.png" height="62" width="62"></button>
	
   

</div>

</div></td>


</tr>

</table>
	</main>
</body>
</html>