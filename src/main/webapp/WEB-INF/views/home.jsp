<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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


	<h1>Liste des taches :</h1>
	<div>
		<table>
			<thead>
				<tr>
					<th>Description</th>
					<th>Date</th>
					<th>Statue</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="task">
					<tr>
						<td>${task.contents }</td>
						<td>${task.targetDate }</td>
						<td>${task.done }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>





</body>
</html>