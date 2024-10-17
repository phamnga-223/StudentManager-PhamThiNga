<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>

	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"
		type="text/css">
</head>

<body>
	<div class="row justify-content-center mt-4">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header">Login</div>
				<div class="card-body">
					<form:form action="/login" method="POST" modelAttribute="admin">
						<div class="form-group row mb-3">
							<form:label path="username" class="col-md-3">Email </form:label>
							<div class="col-md-6">
								<form:input path="username" class="form-control form-control-user"
									type="email" />
								<form:errors path="email" cssClass="invalid-feedback d-block" />
							</div>
						</div>
						<div class="form-group row mb-3">
							<form:label path="password" class="col-md-3">Password </form:label>
							<div class="col-md-6">
								<form:input path="password" class="form-control form-control-user"
									type="password" />
								<form:errors path="password" cssClass="invalid-feedback d-block" />
							</div>
						</div>
						<div class="col-md-6 offset-md-5">
							<button id="loginBtn" class="btn btn-primary btn-block"
								type="submit">Login</button>
						</div>
					</form:form>
				</div>

			</div>
		</div>
	</div>
	</div>

	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>

</html>
