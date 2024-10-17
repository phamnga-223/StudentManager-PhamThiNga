<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Information Add</title>

    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"
			type="text/css">
</head>

<body>
    <div id="wrapper">

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <div class="container-fluid">
                    <div class="card">
						<div class="card-header">Add Personal Information</div>
						
                        <div class="card-body">
                            <form:form action="/personalInformation-add" method="POST" modelAttribute="personalInfo">
                                <div class="form-group row mb-3">
                                    <div class="col-sm-6 mb-sm-0">
                                        <form:label path="fullName">FullName </form:label>
                                        <form:input path="fullName" class="form-control form-control-user"/>
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
                                        <form:label path="relationship">Relationship </form:label>
                                        <form:select class="form-control" path="relationship">
                                            <option value="1">Father</option>
                                            <option value="2">Mother</option>
                                            <option value="3">Brother</option>
                                            <option value="4">Sister</option>
                                            <option value="5">Young Brother</option>
                                        </form:select>
                                        <form:errors path="relationship" cssClass="invalid-feedback d-block" />
                                    </div>
                                </div>
                                <div class="form-group row mb-3">
                                    <div class="col-sm-3 mb-sm-0">
                                        <input value="${ idStudent }" name="idStudent" hidden />
                                        <button id="employeeBtn" class="btn btn-primary btn-block" type="submit">Add
                                            Personal Info</button>
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
