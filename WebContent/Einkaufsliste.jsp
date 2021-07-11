<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
#einkaufdiv {
	
	height: 705px;
	position: fixed;
	top: 0;
	right: 0;
	left: 0;
	bottom: 0;
	margin-left: auto;
	margin-right: auto;
	border: 1px solid red;
	
}

#bild {
	display: block;
	margin-left: auto;
	margin-right: auto
}

#innereinkauf {

	height: 500px;
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
<div id="einkaufdiv">
		<img id="bild"
			src="https://image.flaticon.com/icons/png/128/590/590510.png"
			alt="Einkaufsliste">
			
<div id="innereinkauf">
			<jsp:useBean id="alteEinkaufsliste" class="beans.AlteEinkaufsliste" scope="session"/> <!-- Ändern zur "session" -->
	   
	 <div id="checklist">
			<jsp:useBean id="liste" class="beans.Einkaufsliste" scope="session"/> <!-- Ändern zur "session" -->
	   
	 <c:if test="${(fn:length(liste.allIngr)) > 0}" >
	 		
  	</c:if>
	
	<!-- neue Produkte werden zu der voherigen Einkaufsliste hinzugefügt -->
	   		
				
				<!-- Ausgabe der alten Einkaufsliste -->
				 <c:if test="${(fn:length(alteEinkaufsliste.result)) > 0}" >
	 				<c:forEach items="${alteEinkaufsliste.result}" var="el">
	   				   			
	   					<label ><c:out value="${el}"/></label> <br>
	   			
				</c:forEach>
  				</c:if>
	   			<c:if test="${(fn:length(alteEinkaufsliste.result)) < 1}" >
	   			<label >Ihre Liste ist noch leer</label> <br>
				</c:if>
				
	   			
</div>
		</div>
	</div>
</body>
</html>