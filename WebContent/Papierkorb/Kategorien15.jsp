<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">

div.scrollPage {
	overflow: auto;
	height: 330px;
}

div.rezepte {
	background-color: #d3d3d3;
	margin: 10px;
}

td.ee {
	font-size: 1.5em;
}

table {
	border: 0;
}

td.tag {
	font-size: 0.8em;
	background-color: #fad08c;
	letter-spacing: 1px;
}

td.uf {
	font-size: 0.8em;
	background-color: #fad08c;
	letter-spacing: 8px;
}

button.add {
	background-color: #26bf82;
	text-color: white;
}

body {
	background-color: #564582;
}

<!--
CSS Nav -->#kat-text {
	text-align: left;
	display: inline-block;
}

#rezept-button {
	background-color: #33FF3B;
}

nav li {
	display: inline-block;
	margin-left: 10px;
}

nav ul {
	left: 10px;
	border: 3px solid black;
}

<!--
LiST
 
CSS
 
-->
 @charset "ISO-8859-1";

#einkaufdiv {
	width: 300px;
	height: 750px;
	position: fixed;
	top: 0;
	right: 0;
	margin-top: 10px;
	margin-right: 10px;
	border: 1px solid red;
	overflow: hidden;
}

#bild {
	display: block;
	margin-left: auto;
	margin-right: auto
}

#innereinkauf {
	width: 250px;
	height: 350px;
	margin: 9px;
	padding: 15px;
	border-style: solid;
	border: 1px solid green;
}

#hinzu {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
<meta charset="ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	var req = new XMLHttpRequest();

	req.onreadystatechange = function() {
		if (req.readyState == 4) {
			if (req.status == 200) {

				var searchId = '.'; // Gesuchte ID-Rezept
				str = '\u003ctable[^\0@]*@*' + searchId
						+ '[^\0i]*[^@]*\u002ftable\u003e'; // regex für ID-Rezept
				var reg = new RegExp(str, 'g');
				rezepte = req.responseText.match(reg); // suche naach dem ID-Rezept

				if (rezepte != null) { // prüfung, ob das vohanden ist 

					for (n = 0; n < rezepte.length; n++) { // es können mehrere Rezepte der Suche entsprechen
						var my_div = newDiv = null;
						var newDiv = document.createElement("div"); // für jeden Rezept wird ein neues Kontainer erstellt und mit den Daten aus der Datenbank befüllt
						newDiv.innerHTML = '<div id="rezeptBlock" class="rezepte"> <form action="IngredientsCalc" method="get">	<table border="1"  ><tr> <td  align="center" width="100"> Bild</td><td id="tdRezept" >'
								+ rezepte[n]
								+ '</td>		<td valign="bottom"> <input name="addToList" class="add" type="submit" value="+"></td>	</tr></table> </form>';
						my_div = document.getElementById("out");
						my_div.appendChild(newDiv);

					}

					var beschreibung = document.getElementsByClassName("be"); // Rezeptzubereitung ausblenden

					for (i = 0; i < beschreibung.length; i++) {
						beschreibung[i].innerHTML = "";
					}

					var zutatenliste = document.getElementsByClassName("zu"); // Zutatenliste ausblenden
					for (i = 0; i < zutatenliste.length; i++) {
						zutatenliste[i].innerHTML = "";
					}

					var zutatenServlet = document.getElementsByClassName("ser"); // Zutaten für Servlet-Bearbeitung ausblenden
					for (i = 0; i < zutatenServlet.length; i++) {
						//zutatenServlet[i].innerHTML ="" ;
					}

				} else { // wenn keine ID-Rezept vorhanden ist....
					var my_div = newDiv = null;
					var newDiv = document.createElement("div");
					newDiv.innerHTML = ":(";
					my_div = document.getElementById("out");
					my_div.appendChild(newDiv);
				}

			}
			if (req.status == 404) {
				console.log('File or resource not found');
			}
		}

	};

	req.open('GET', 'DB-KategorieE.html', true);

	req.send();
</script>
<title>Insert title here</title>
</head>
<body>




	<nav>
		<form>
			<ul>
				<li><h4 id="kat-text">Kategorien</h4></li>

				<li><button id="kat-button">a</button></li>
				<li><button id="kat-button">b</button></li>
				<li><button id="kat-button">c</button></li>
				<li><button id="kat-button">d</button></li>
				<li><button id="kat-button">e</button></li>

				<li><button id="rezept-button" formaction="NewRecipe2.jsp">+Rezept</button></li>
				<li><input id="searchInput" type="search"
					placeholder="rechts anordnen"></li>
			</ul>
		</form>
	</nav>


	<table>

		<tr>
			<td><h2>Kategoriename</h2></td>
			<td><img id="bild"
				src="https://image.flaticon.com/icons/png/128/590/590510.png"
				alt="Einkaufsliste" width="40px" height="40px"></td>
		</tr>
		<tr>
			<td width="600" valign="top">
				<div class="scrollPage" id="out"></div>
			</td>

			<td width="200" valign="top" align="center"><div id="einkaufdiv">

					<div id="innereinkauf">

						<ul>

							<jsp:useBean id="liste" class="beans.Einkaufsliste"
								scope="session" />


							<jsp:useBean id="alteEinkaufsliste"
								class="beans.AlteEinkaufsliste" scope="session" />

							<c:if test="${(fn:length(liste.allIngr)) > 0}">
								<jsp:setProperty property="news" name="alteEinkaufsliste"
									value="${liste.allIngr}" />
							</c:if>




							<c:if test="${(fn:length(alteEinkaufsliste.alteIngr)) > 0}">
								<c:forEach items="${alteEinkaufsliste.alteIngr}" var="el">
									<li><c:out value="${el}" /></li>
								</c:forEach>
							</c:if>



						</ul>
					</div>
					<form>
						<button id="hinzu" formaction="EinkaufslisteAnzeigen.html">Einkaufsliste erstellen</button>
					</form>
				</div></td>


		</tr>

	</table>
</body>
</html>