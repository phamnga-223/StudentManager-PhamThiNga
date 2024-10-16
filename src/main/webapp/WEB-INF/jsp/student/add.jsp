<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
	<h1>Add Student</h1>
	
	<div>
	<form:form action="/student-add" method="POST" modelAttribute="student">
									<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
											<form:label path="fullName">FullName </form:label>		
											<form:input path="fullName"/>		
											<form:errors path="fullName" cssClass="invalid-feedback d-block" />			
										</div>
										<div class="col-sm-6">
											<form:label path="birthDate">Birth Date </form:label>
											<form:input path="birthDate" class="form-control form-control-user" type="date" />
											<form:errors path="birthDate" cssClass="invalid-feedback d-block" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
											<form:label path="gender">Gender </form:label>
											<form:select class="form-control" path="gender">
												<option value="1">Male</option>
												<option value="2">Female</option>
											</form:select>
										</div>
										<div class="col-sm-6 mb-3 mb-sm-0">
											<form:label path="GPA">GPA </form:label>
											<form:input path="GPA" class="form-control form-control-user" />
											<form:errors path="GPA" cssClass="invalid-feedback d-block" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-3 mb-3 mb-sm-0">
											<button id="employeeBtn" class="btn btn-primary btn-block" type="submit">Add Student</button>
										</div>
									</div>
								</form:form>
	                       </div>
</body>
