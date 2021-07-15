<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="BeraatKategorien.css">
<script src="script.js"></script>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
 
 
 
 
    <nav>
        <ul>
            <li><h4 id="kat-text">Kategorien</h4></li>
 
            <li><div id="btn"><span id="kat-button" class="noselect">A</span><div id="circle"></div></div></li>
            <li><div id="btn"><span id="kat-button" class="noselect">B</span><div id="circle"></div></div></li>
            <li><div id="btn"><span id="kat-button" class="noselect">C</span><div id="circle"></div></div></li>
            <li><div id="btn"><span id="kat-button" class="noselect">D</span><div id="circle"></div></div></li>
            <li><div id="btn"><span id="kat-button" class="noselect">E</span><div id="circle"></div></div></li>
 
 
            <li><button id="rezept-button">+Rezept</button></li>
        </ul>
    </nav>
    
    
 <div id="checklist">
  <input id="01" type="checkbox" name="r" value="1" checked>
  <label for="01">Brot</label>
  <input id="02" type="checkbox" name="r" value="2">
  <label for="02">Quark</label>
  <input id="03" type="checkbox" name="r" value="3">
  <label for="03">Sucuk</label>
</div>
 
<table >
 
<tr><td><h2>Kategoriename</h2></td><td><img id="bild" src="https://image.flaticon.com/icons/png/128/590/590510.png" alt="Einkaufsliste" width="40px" height="40px"></td></tr>
<tr>
<td width="600" valign="top">
<div class="scrollPage" id="out"  >
</div>
</td>
 
<td width="200" valign="top" align="center"><div id="einkaufdiv">
 
<div id="innereinkauf" >
 
<ul>
 
    <jsp:useBean id="liste" class="beans.Einkaufsliste" scope="session"/>
    
        
       <jsp:useBean id="alteEinkaufsliste" class="beans.AlteEinkaufsliste" scope="session"/>
       
       <c:if test="${(fn:length(liste.allIngr)) > 0}" >
                <jsp:setProperty property="news" name="alteEinkaufsliste" value="${liste.allIngr}"/>
       </c:if>
    
    
        
        
        <c:if test="${(fn:length(alteEinkaufsliste.alteIngr)) > 0}" >           
                <c:forEach items="${alteEinkaufsliste.alteIngr}" var="el">
                    <li><c:out value="${el}"/></li>
                </c:forEach>
        </c:if>
    
    
 
</ul>
</div>
<button id="hinzu" type="button">Einkaufsliste erstellen</button>
</div></td>
 
 
</tr>
 
</table>
</body>
</html>