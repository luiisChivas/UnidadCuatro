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
								<th>SequenceNo</th>
								<th>Code</th>
								<th>Modifier</th>
								<th>PayerType</th>
								<th>PostUser</th>
								<th>Memo</th>
								<th>PayAmount</th>
								<th>Update</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="activity" items="${activities}">
								<tr>
									<td>${activity.id}</td>
									<td>${activity.encounter}</td>
									<td>${activity.sequenceNo}</td>
									<td>${activity.code}</td>
									<td>${activity.modifier}</td>
									<td>${activity.payerType}</td>
									<td>${activity.postUser}</td>
									<td>${activity.memo}</td>
									<td>${activity.payAmount}</td>
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
						<label class="control-label col-sm-3">SequenceNo:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="sequenceNo"
								value="${activity.sequenceNo}" />
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
						<label class="control-label col-sm-3">PayerType:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="payerType"
								value="${activity.payerType}" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-3">PostUser:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="postUser"
								value="${activity.postUser}" />
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
						<label class="control-label col-sm-3">PayAmount:</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" name="payAmount"
								value="${activity.payAmount}" />
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