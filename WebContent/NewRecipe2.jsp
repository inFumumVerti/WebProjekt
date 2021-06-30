<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Neues Rezept erstellen</title>

    <style>
        .content {
            max-width: 500px;
            margin: auto;
        }
        img{
            margin-left: 20px;
        }
        .deleteButton{
        background-color: LightCoral;
        position: relative;
        }
        .desc{
            width: 500px;
            height: 250px;
        }
        .name{
            width: 400px;
        }

        .break{
            height: 50px;
        }
        
        .tag{
        width: 60px;
        }

    </style>
</head>


<body>
<form action="SaveRecipe" method="get" >

<div class="content">
<h1 align="center">Neues Rezept erstellen!</h1>
    <div class="break"></div>
    
 
<input name="Rezeptname" class="name" placeholder="Name des Gerichtes">
  <div class="break"></div>
 <select  name="Kategorie">
        <option>Kategorie A</option>
        <option>Kategorie B</option>
        <option>Kategorie C</option>
        <option>Kategorie D</option>
        <option>Kategorie E</option>
    </select>
   
   <input  name="tag" class="tag" placeholder="Tag">
   <input  name="tag" class="tag" placeholder="Tag">
   
   
   <input  name="dauer" class="tag" type="number" placeholder="Dauer">
   <select  name="minSt">
        <option>Minuten</option>
        <option>Stunden</option>
        
    </select>

 <div class="break"></div>



<div class="break"></div>
<h2>Zutaten:</h2>


 <input name="Zutat">
 <input type="number" name="Menge">
    <select name="Einheit">
        <option>KG</option>
        <option>Liter</option>
    </select>
   
    <button type="button" id="DeleteZutat" class="deleteButton">Zutat Löschen</button>
    <button type="button" id="AddZutat" class="addZButton">+ Zutat</button> <br>


 <input name="Zutat">
 <input type="number" width="20" name="Menge">
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