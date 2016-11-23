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
<title>Activity | Home</title>
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/style.css">
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-activity">New Activity</a></li>
					<li><a href="all-activities">All Activities</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container">
				<div class="jumbotron text-center" id="homeDiv">
					<h1>Welcome to Activity Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_ACTIVITIES'}">
			<div class="container text-center" id="activityDiv">
				<h3>My Activities</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Encounter</th>
								<th>Sequence_no</th>
								<th>Code</th>
								<th>Modifier</th>
								<th>Payer_type</th>
								<th>Post_user</th>
								<th>Memo</th>
								<th>Pay_amount</th>
								<th>Update</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="activity" items="${activities}">
								<tr>
									<td>${activity.id}</td>
									<td>${activity.encounter}</td>
									<td>${activity.sequence_no}</td>
									<td>${activity.code}</td>
									<td>${activity.modifier}</td>
									<td>${activity.payer_type}</td>
									<td>${activity.post_user}</td>
									<td>${activity.memo}</td>
									<td>${activity.pay_amount}</td>
									<td><a href="update-activity?id=${activity.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-activity?id=${activity.id}"> <span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_NEW' || mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Activity</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-activity">
					<input type="hidden" name="id" value="${activity.id}" />
					<div class="form-group">
						<label class="control-label col-sm-3">Encounter:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="encounter"
								value="${activity.encounter}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">Sequence_no:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="sequence_no"
								value="${activity.sequence_no}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">Code:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="code"
								value="${activity.code}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">Modifier:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="modifier"
								value="${activity.modifier}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">Payer_type:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="payer_type"
								value="${activity.payer_type}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">Post_user:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="post_user"
								value="${activity.post_user}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">Memo:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="memo"
								value="${activity.memo}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">Pay_amount:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="pay_amount"
								value="${activity.pay_amount}" />
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