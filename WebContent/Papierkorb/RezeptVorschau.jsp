<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>A</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <style type="text/css">
    * {
    font-family: 'Courier New', Courier, monospace;
}
#rezept{
    position:relative;
    top:100px;
}
#rezepttable{
    border-collapse: separate;
   
}
td{
    border: 1px solid black;
    vertical-align: top;
}

#rezepttags{
    margin:0px;
}
h1 {
    margin: 0px;
}

h2 {
    margin: 0px;
}

h3 {
    margin: 0px;
}




#kat-text{
    text-align: left;
    display: inline-block;
}

#rezept-button{
    background-color: #33FF3B;
}


nav li {
    display: inline;
    margin-left:10px;
}	

nav ul{

    position: absolute;
      left: 30px;
      border: 3px solid black;
}


#einkaufdiv{

	top:0;
	right:0;
	margin-top: 10px;
	margin-right: 10px;
	border: 1px solid red;
}
#bild{
	display: block;
    margin-left: auto;
    margin-right: auto
}
#innereinkauf{
	width: 150px;

	margin: 9px;
	padding: 15px;
	border-style: solid;
	border: 1px solid green;
}
#hinzu{
	display: block;
    margin-left: auto;
    margin-right: auto;
}



#einkaufdiv{
	
	background-color: #aab433
	height: 750px;

	top:0;
	right:0;
	margin-top: 10px;
	margin-right: 10px;
	border: 0px solid red;
}
#bild{
  
   
	display: block;
    margin-left: auto;
    margin-right: auto
}
#innereinkauf{
    position: relative;
    
	width: 250px;
	
	margin: 9px;
	padding: 15px;
	border-style: solid;
	border: 1px solid green;
}
#hinzu{
	display: block;
    margin-left: auto;
    margin-right: auto;
}
    </style>
</head>
<body>
  <nav>
        <ul>
            <li><h4 id="kat-text">Kategorien</h4></li>

            <li><button id="kat-button">a</button></li>
            <li><button id="kat-button">b</button></li>
            <li><button id="kat-button">c</button></li>
            <li><button id="kat-button">d</button></li>
            <li><button id="kat-button">e</button></li>

            <li><button id="rezept-button">+Rezept</button></li>
        </ul>
    </nav>

  
    <div class ="test" id="rezept">
       
        <table id="rezepttable">
            <tbody>
            <tr><td colspan="2" ><h1 id="rezeptname">Schmerz des Lebens</h1></td><td> <img id="bild" src="https://image.flaticon.com/icons/png/128/590/590510.png" alt="Einkaufsliste" width="40" height="40"></td><tr>
              <tr>
                <td height="0px"  width="800px"><h3>Zutatenliste</h3>Tränen<br>Salz<br>Schmerz</td>
                <td rowspan="4"  ><img src="rezept.jpg" alt="Rezept" width="200px" height="125px"></td>
             <td rowspan="4" width="100px">  
             	<div id="einkaufdiv">
   
    		<div id="innereinkauf">
    <ul>
      <li>Test Eintrag</li>
      <li>Test Eintrag</li>
      <li>Test Eintrag</li>
      <li>Test Eintrag</li>
      <li>Test Eintrag</li>
      <li>Test Eintrag</li>
    </ul>
    </div>
    <button id="hinzu" type="button">Einkaufsliste erstellen</button>
    </div>
              </td>
              </tr>
              <tr>
                <td height="10px">
                    <table id="rezepttags">
                        <tr>
                            <td>Tag</td>
                            <td>UwU</td>
                            <td>OwO</td>
                            <td>AAAA</td>
                          </tr>
                    </table>
                </td>
              </tr>
              <tr>
                <td height="10px"><b>Rezept Hinzufügen</b></td>
              </tr>
            </tbody>
        </table>
        <h1>Beschreibung</h1>
        <p>
            Cry<br>then Cry
        </p>
    </div>
</body>
</html>