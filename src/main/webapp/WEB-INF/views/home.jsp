<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Ajouter une Tache</h1>
	<form action="/" method="POST">
		<input name="content" type="text"> <input type="submit"
			value="Ajouter">
	</form>
	<hr>


	<h1>Liste des taches a effectuées :</h1>
	<p>${list }</p>
</body>
</html>