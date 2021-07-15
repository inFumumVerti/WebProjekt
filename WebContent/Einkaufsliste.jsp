<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Einkaufsliste</title>

<script src="jquery-3.6.0.js"></script>
</head>
<body>
<style type="text/css">

body{
      background-color: #222;
 
      font-family: "Poppins", sans-serif;
      position:centre;
}
header {
	border: 1px solid red;
	height: 100px;
	 font-family: "Poppins", sans-serif;
}

h1{
	color: white;
}
h2{
	color:white;
}
.buttons {
	margin: 10%;
	text-align: center;
}

.btn-hover {
	width: 129px;
	font-size: 16px;
	font-weight: 600;
	color: #fff;
	cursor: pointer;
	margin: 20px;
	height: 55px;
	text-align: center;
	border: none;
	background-size: 300% 100%;
	border-radius: 50px;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.btn-hover:hover {
	background-position: 100% 0;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.btn-hover:focus {
	outline: none;
}

.btn-hover.color-1 {
	background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
	box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}
.btn-hover.color-8 {
    background-image: linear-gradient(to right, #29323c, #485563, #2b5876, #4e4376);
    box-shadow: 0 4px 15px 0 rgba(45, 54, 65, 0.75);
}
main {
	border: 1px solid blue;
	height: 600px;
}



.form__group {
	position: relative;
	padding: 15px 0 0;
	margin-top: 10px;
	width: 50%;
}

.form__field {
	font-family: inherit;
	width: 100%;
	border: 0;
	border-bottom: 2px solid #9b9b9b;
	outline: 0;
	font-size: 1.3rem;
	color: #fff;
	padding: 7px 0;
	background: transparent;
	transition: border-color 0.2s;
}

.form__field::placeholder {
	color: transparent;
}

.form__field:placeholder-shown ~ .form__label {
	font-size: 1.3rem;
	cursor: text;
	top: 20px;
}

.form__label {
	position: absolute;
	top: 0;
	display: block;
	transition: 0.2s;
	font-size: 1rem;
	color: #9b9b9b;
}

.form__field:focus {
	padding-bottom: 6px;
	font-weight: 700;
	border-width: 3px;
	border-image: linear-gradient(to right, #11998e, #38ef7d);
	border-image-slice: 1;
}

.form__field:focus ~ .form__label {
	position: absolute;
	top: 0;
	display: block;
	transition: 0.2s;
	font-size: 1rem;
	color: #11998e;
	font-weight: 700;
}
/* reset input */
.form__field:required, .form__field:invalid {
	box-shadow: none;
}

#search {
	margin:auto;
	float: left;
	width: 200px;
}

#innereinkauf {
	
	width: 900px;

	margin: 70px;
	
	padding: 15px;
	border-style: solid;
	border-width: 3px;
	border-image: linear-gradient(to right, #11998e, #38ef7d);
	border-image-slice: 1;
	background-color:#797c82;
	
	 
}




    
    
    
 
    







 
 

 

 
 
#checklist {
     --background: #fff;
     --text: #414856;
     --check: #4f29f0;
     --disabled: #c3c8de;
      --border-radius: 10px;
    
   
     background: var(--background);
   
	margin:50px;
 
 
 
     float: none;
     box-shadow: 0 10px 30px rgba(65, 72, 86, 0.05);
     padding: 50px 120px 50px 120px;
     display: grid;
     grid-template-columns: 30px auto;
     align-items: center;
      border-radius: var(--border-radius);
}
 #checklist label {
     color: var(--text);
     position: relative;
     cursor: pointer;
     display: flex;
     align-items: center;
     width: fit-content;
     transition: color 0.3s ease;
}
 #checklist label::before, #checklist label::after {
     content: "";
     position: absolute;
}
 #checklist label::before {
     height: 2px;
     width: 8px;
     left: -27px;
     background: var(--check);
     border-radius: 2px;
     transition: background 0.3s ease;
}
 #checklist label:after {
     height: 4px;
     width: 4px;
     top: 8px;
     left: -25px;
     border-radius: 50%;
}
 #checklist input[type="checkbox"] {
     -webkit-appearance: none;
     -moz-appearance: none;
     position: relative;
     height: 15px;
     width: 15px;
     outline: none;
     border: 0;
     margin: 0 15px 0 0;
     cursor: pointer;
     background: var(--background);
     display: grid;
     align-items: center;
}
 #checklist input[type="checkbox"]::before, #checklist input[type="checkbox"]::after {
     content: "";
     position: absolute;
     height: 2px;
     top: auto;
     background: var(--check);
     border-radius: 2px;
}
 #checklist input[type="checkbox"]::before {
     width: 0px;
     right: 60%;
     transform-origin: right bottom;
}
 #checklist input[type="checkbox"]::after {
     width: 0px;
     left: 40%;
     transform-origin: left bottom;
}
 #checklist input[type="checkbox"]:checked::before {
     animation: check-01 0.4s ease forwards;
}
 #checklist input[type="checkbox"]:checked::after {
     animation: check-02 0.4s ease forwards;
}
 #checklist input[type="checkbox"]:checked + label {
     color: var(--disabled);
     animation: move 0.3s ease 0.1s forwards;
}
 #checklist input[type="checkbox"]:checked + label::before {
     background: var(--disabled);
     animation: slice 0.4s ease forwards;
}
 #checklist input[type="checkbox"]:checked + label::after {
     animation: firework 0.5s ease forwards 0.1s;
}
 @keyframes move {
     50% {
         padding-left: 8px;
         padding-right: 0px;
    }
     100% {
         padding-right: 4px;
    }
}
 @keyframes slice {
     60% {
         width: 100%;
         left: 4px;
    }
     100% {
         width: 100%;
         left: -2px;
         padding-left: 0;
    }
}
 @keyframes check-01 {
     0% {
         width: 4px;
         top: auto;
         transform: rotate(0);
    }
     50% {
         width: 0px;
         top: auto;
         transform: rotate(0);
    }
     51% {
         width: 0px;
         top: 8px;
         transform: rotate(45deg);
    }
     100% {
         width: 5px;
         top: 8px;
         transform: rotate(45deg);
    }
}
 @keyframes check-02 {
     0% {
         width: 4px;
         top: auto;
         transform: rotate(0);
    }
     50% {
         width: 0px;
         top: auto;
         transform: rotate(0);
    }
     51% {
         width: 0px;
         top: 8px;
         transform: rotate(-45deg);
    }
     100% {
         width: 10px;
         top: 8px;
         transform: rotate(-45deg);
    }
}
 @keyframes firework {
     0% {
         opacity: 1;
         box-shadow: 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0, 0 0 0 -2px #4f29f0;
    }
     30% {
         opacity: 1;
    }
     100% {
         opacity: 0;
         box-shadow: 0 -15px 0 0px #4f29f0, 14px -8px 0 0px #4f29f0, 14px 8px 0 0px #4f29f0, 0 15px 0 0px #4f29f0, -14px 8px 0 0px #4f29f0, -14px -8px 0 0px #4f29f0;
    }
  }  
    
    .del{
   	
    height:20px;
    
    background-color: green;}
    
    #sub{
    visibility: hidden;}
     #cancel{
    visibility: hidden;}
   #addZutat{
    visibility: hidden;}
    
    input[type="text"]{
    width: 50px;
   margin-right:10px;
    }
    
 
    
  
    
    }
}
</style>

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

	<script type="text/javascript">
	
	function addZutaten(){
		leerDiv = document.getElementById("leer");
		leerDiv.innerHTML="";
		addElemDiv = document.getElementById("addElem");
		var inputDiv = document.createElement("div");
		
		
		
		
		inputDiv.innerHTML='<label class="l" ><input placeholder="Zutate" type="text" name="newIngr" ><input  type="text" name="newMenge" placeholder="Menge"><input placeholder="Einheit" type="text" name="newEinheit"></label>';
		
		addElemDiv.appendChild(inputDiv);
		
		
		
	}	
	var e=0;
	
function elementDelete(){
	e=e+1;
	del = document.getElementById("del");
	del.innerHTML="Löschen";
	del.style.backgroundColor='red';
	
	addZutat = document.getElementById("addZutat");
	addZutat.style.visibility ="visible";
	sub = document.getElementById("sub");
	sub.style.visibility ="visible";
	cancel = document.getElementById("cancel");
	cancel.style.visibility ="visible";
	
	list = document.getElementById("checklist");
	

	if(e>1){
	var elements = document.getElementsByClassName("l");
	
		
	

	for (var i=0; i<elements.length; i++){
		
		if(elements[i].checked==true){
			if(elements.length>2){
				list.removeChild(elements[i+1]);
				list.removeChild(elements[i]);
				i=0;}
		}	
		}
	for (var i=0; i<elements.length; i++){
		
		if(elements[i].checked==true){
			if(elements.length>2){
				list.removeChild(elements[i+1]);
				list.removeChild(elements[i]);
				i=0;}
		}	
		}
	
	
	}
	
}


</script>	
	

<div id="innereinkauf">	
<div  align="right">	 <button id="del" class="del" onclick="elementDelete()" >Einkaufsliste bearbeiten</button></div>
<div  align="right">	 <button id="addZutat"  onclick="addZutaten()" >Zutaten selbst einfügen</button></div>
	 <form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="change">
<input type="hidden" name="goTo" value="/Einkaufsliste.jsp">
	
	 <div id="checklist">
			<jsp:useBean id="liste" class="beans.Einkaufsliste" scope="session"/> <!-- Ändern zur "session" -->
	   
	

	
	<!-- neue Produkte werden zu der voherigen Einkaufsliste hinzugefügt -->
	   		
				
				<!-- Ausgabe der alten Einkaufsliste -->
					
	   			<div >	 </div>	<div id="addElem"  >	 </div>
		
	   					
		
			<c:if test="${(fn:length(liste.result)) > 0 }" >
		
			
	 					 					<% int i=0; %> 
	 				<c:forEach items="${liste.result}" var="el" varStatus="status">
	 			
	 				
	 				<% i++; %>	
	 				
	 				
	   				<input class="l" id="${i}" type="checkbox" name="r" value="${i}" >
	   				
	   				  <!-- ausgabe von dem result -->
	   				 
	   				  
  					<label class="l"for="${i}" ><c:out  value="${el}"/>
  					<input  type="hidden" name="alteIngr" value="${liste.alteIngr[status.index]}">
  					<input  type="hidden" name="alteMenge" value="${liste.alteMenge[status.index]}">
  					<input  type="hidden" name="alteEinheit" value="${liste.alteEinheit[status.index]}"> 
  					  <!-- tatsächliche Daten, aus denen "result" besteht -->
  					</label>
  					
  						
  								
	   	
					
				
				</c:forEach>
				
							
	 						
	   			
	   			 
				
  			</c:if>
  			<%String meldung; %>
	   			<c:if test="${(fn:length(liste.result)) < 1}" >
	   				<% meldung="Ihre Liste ist noch leer "; %>
	   		
				</c:if>
				<div id="leer"> <c:out value="${meldung}"></c:out></div>
				

  					
  					
</div><div align="left"><input id="sub"  type="submit"  value="Bearbeitung speichern"></div>	
</form>

 <form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="false">
<input type="hidden" name="goTo" value="/Einkaufsliste.jsp">
<input type="submit" id="cancel" value="Cancel">
</form>
</div>


	




	   		
 <form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="false">
<input type="hidden" name="goTo" value="/HomePageTry54.jsp">
<input type="submit" value="Home">
</form>
		
	 <form action="IngredientsCalc" method="get">	
<input type="hidden" name="calc" value="false">
<input type="hidden" name="goTo" value="/Z30.06.jsp">
<input type="submit" value="Kategorien">
</form>	 			
	 				
	 			
	 				
	   		
  					
  			

</main>
</body>
</html>