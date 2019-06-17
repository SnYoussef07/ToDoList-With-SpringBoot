<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>


	<div class="container-fluid my-5 border p-5 shadow-sm rounded bg-light">
		<div class="row mt-5">
			<div class="col-3 mt-5 border-right border-dark">
				<h4>Ajouter une Tache</h4>
				<form action="/" method="POST">
					<div class="form-group">
						<input type="text" name="content" class="form-control"
							required="required">
					</div>
					<button type="submit" class="btn btn-primary">Ajouter</button>
				</form>
			</div>
			<div class="col-8 offset-md-1 mt-5 p-2">
				<h3>Liste des taches :</h3>
				<table class="table table-striped">
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
								<td><a href="/delete-task?id=${task.id}"
									class="btn btn-danger">Supprimer</a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>







</body>
</html>