<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="NewRecipe3CSSStyle.css">
<meta charset="ISO-8859-1">
<title>Neues Rezept</title>
</head>
<body>

<form action="SaveRecipe" method="get" >

		<h1>Neues Rezept erstellen</h1>
		<div class="form__group field">
			<input type="text" class="form__field" placeholder="Name"
				name="Rezeptname" id='name' required /> <label for="name"
				class="form__label">Name des Gerichts</label>
		</div>
		<br>
		<input type="file" id="img" name="img" accept="image/jpg">
		<div class="form__group field">

			<input type="text" class="form__field" placeholder="Dauer"
				name="dauer" id='dauer' required /> <label for="Dauer"
				class="form__label">Dauer (Min)</label>
		</div>
		<br> <select name="Kategorie" class="select-wrapper">
			<option>Kategorie A</option>
			<option>Kategorie B</option>
			<option>Kategorie C</option>
			<option>Kategorie D</option>
			<option>Kategorie E</option>
		</select>
		<div class="form__group field">
			<input name="tag" type="text" class="form__field" placeholder="Tag" name="tag"
				id='tag' required /> <label for="tag" class="form__label">Tags</label>
			<input name="tag" type="text" class="form__field" placeholder="Tag2" name="tag2"
				id='tag2' required />
		</div>
		<br>
		<h1>Zutaten</h1>
		<div class="form__group field">
			<table>
				<tr>
					<td width="40%"><input  type="text" class="form__field"
						placeholder="Zutat" name="Zutat" id='zutat' required /> <label
						for="zutat" class="form__label">Zutat</label></td>
					<td width="40%"><input type="text" class="form__field"
						placeholder="Menge" name="Menge" id='menge' required /><label
						for="menge" class="form__label">Menge</label></td>
					<td width="20%"><select name="Einheit" class="select-wrapper">
							<option>Gramm</option>
							<option>Kilogramm</option>
							<option>Liter</option>

					</select></td>
				</tr>
			</table>
		</div>	
		<table>
		<tr>
			<td><button type="button" id="DeleteZutat" class="btn-hover color-1">Zutat löschen</button></td>
			<td><button type="button" id="AddZutat" class="btn-hover color-1">+Zutat</button></td>
		</tr>
		</table>		
			
		<h1>Beschreibung</h1>
		<textarea rows="30" cols="100" name="Beschreibung" placeholder="Deine Beschreibung..."></textarea>
		<br>
		<button onclick="submitclick()" id="subm" class="btn-hover color-1">Bestätigen</button>
		
		<script type="text/javascript">
			function submitclick(){
				
			}
		</script>

</form>
</body>
</html>