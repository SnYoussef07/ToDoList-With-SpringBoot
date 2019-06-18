<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


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
							<th>modification
								<button class="btn btn-info" id="showEdit">+</button>
							</th>
							<th>suppression</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="task">
							<tr>
								<td>${task.contents }</td>
								<td><fmt:formatDate pattern="dd/MM/yyyy"
										value="${task.targetDate }" /></td>

								<td>${task.done }</td>

								<td><form action="/update-task" method="POST"
										class="allForm d-none">
										<input type="text" name="content"> <input
											type="hidden" name="id" value="${task.id}">
										<button type="submit" class="btn btn-warning">Modifier</button>
									</form></td>


								<td><a href="/delete-task?id=${task.id}"
									class="btn btn-danger">Supprimer</a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script>
		const showEdit = document.getElementById("showEdit");
		const allForm = document.getElementsByClassName("allForm");
		
		showEdit.addEventListener("click" , () => { 
			for (let form of allForm) {
				form.classList.toggle("d-none"); 			
			}
		});
	</script>
</body>
</html>