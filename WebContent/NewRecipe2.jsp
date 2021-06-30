<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Neues Rezept erstellen</title>
	<link rel="stylesheet" type="text/css" href="NewRecipe2Style.css">
</head>


<body>
<form action="SaveRecipe" method="get" >

<div class="content">
<h1 align="center">Neues Rezept erstellen!</h1>
    <div class="break"></div>
    
 
<input name="Rezeptname" class="textInput" type="text" placeholder="Name des Gerichtes">
  <div class="break"></div>
 <select  name="Kategorie">
        <option>Kategorie A</option>
        <option>Kategorie B</option>
        <option>Kategorie C</option>
        <option>Kategorie D</option>
        <option>Kategorie E</option>
    </select>
   <input  name="dauer" class="tag" type="number" placeholder="Dauer">
   <select  name="minSt">
        <option>Minuten</option>
        <option>Stunden</option>
        
    </select>
    <br>
     <input  name="tag" class="textInput" placeholder="Tag">
  	 <input  name="tag" class="textInput" placeholder="Tag">

 <div class="break"></div>



<div class="break"></div>
<h2>Zutaten:</h2>


 <input name="Zutat" class="textInput">
 <input type="number" name="Menge" class="textInput">
    <select name="Einheit">
        <option>KG</option>
        <option>Liter</option>
    </select>
   
    <button type="button" id="DeleteZutat" class="deleteButton">Zutat Löschen</button>
    <button type="button" id="AddZutat" class="addZButton">+ Zutat</button> <br>


 <input name="Zutat" class="textInput" >
 <input type="number" width="20" name="Menge" class="textInput">
    <select name="Einheit">
        <option>KG</option>
        <option>Liter</option>
    </select>
   
    <button type="button" id="DeleteZutat" class="deleteButton">Zutat Löschen</button>
    <button type="button" id="AddZutat" class="addZButton">+ Zutat</button> <br>






<h2>Beschreibung:</h2>

<textarea name="Beschreibung" class="desc" placeholder="Hier kommt die Beschreibung und Zuberieung ihres Gerichtes hin!"></textarea>

    <button type="submit" class="submit">Rezept speichern!</button>

</div>

</form>


</body>
</html>