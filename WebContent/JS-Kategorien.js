

$(document).ready(function(){
     $(".cont").mouseover(function(){
         $(".cont button span").css("background-color", "red");
     });
});

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


req.open('GET', 'DB-KategorieZ.html', true);



req.send();
