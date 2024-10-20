<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Add</title>

	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"
			type="text/css">
</head>

<body>
    <div id="wrapper">

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <div class="container-fluid">
                    <div class="card">
						<div class="card-header">Add Student</div>
						
                        <div class="card-body">
                            <form:form action="/student-add" method="POST" modelAttribute="student">
                                <div class="form-group row mb-3">
                                    <div class="col-sm-6 mb-sm-0">
                                        <form:label path="fullName">FullName </form:label>
                                        <form:input path="fullName" class="form-control form-control-user" />
                                        <form:errors path="fullName" cssClass="invalid-feedback d-block" />
                                    </div>
                                    <div class="col-sm-6">
                                        <form:label path="birthDate">Birth Date </form:label>
                                        <form:input path="birthDate" class="form-control form-control-user"
                                            type="date" />
                                        <form:errors path="birthDate" cssClass="invalid-feedback d-block" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <div class="col-sm-6 mb-sm-0">
                                        <form:label path="gender">Gender </form:label>
                                        <form:select class="form-control" path="gender">
                                            <option value="1">Male</option>
                                            <option value="2">Female</option>
                                        </form:select>
										<form:errors path="gender" cssClass="invalid-feedback d-block" />
                                    </div>
                                    <div class="col-sm-6 mb-sm-0">
                                        <form:label path="GPA">GPA </form:label>
                                        <form:input path="GPA" class="form-control form-control-user" type="number" />
                                        <form:errors path="GPA" cssClass="invalid-feedback d-block" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <div class="col-sm-3 mb-3 mb-sm-0">
                                        <button id="employeeBtn" class="btn btn-primary btn-block" type="submit">Add
                                            Student</button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>

</html>
