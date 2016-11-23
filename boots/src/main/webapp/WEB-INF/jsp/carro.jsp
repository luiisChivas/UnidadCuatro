<%@page language="java" contentType="text/html; charset=UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<title>Carro | Home</title>
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/style.css">
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-car">New Car</a></li>
					<li><a href="all-cars">All Cars</a></li>
				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container">
				<div class="jumbotron text-center" id="homeDiv">
					<h1>Welcome to Car Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_CARS'}">
			<div class="container text-center" id="carsDiv">
				<h3>My Cars</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name Car</th>
								<th>Model</th>
								<th>Date created</th>
								<th>Update</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="car" items="${cars}">
								<tr>
									<td>${car.id}</td>
									<td>${car.name}</td>
									<td>${car.model}</td>
									<td><fmt:formatDate pattern="dd-MM-yyyy" value="${car.dateCreated}" /></td>
									<td><a href="update-car?id=${car.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-car?id=${car.id}"> <span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_NEW' || mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Car</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-car">
					<input type="hidden" name="id" value="${car.id}" />
					<div class="form-group">
						<label class="control-label col-sm-3">Name car:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="name"
								value="${car.name}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">Model:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="model"
								value="${car.model}" />
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>

				</form>
			</div>
		</c:when>
	</c:choose>
	
	<script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="static/js/bootstrap.min.js"></script>
</body>
</html>