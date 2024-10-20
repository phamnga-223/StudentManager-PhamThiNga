<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Index</title>

	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"
			type="text/css">
</head>

<body>
    <h1>List Student</h1>

	<a href="/student-add">Add Personal Information</a>

    <div id="wrapper">

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <div class="container-fluid">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</td>
                                            <th>FullName</th>
                                            <th>BirthDate</th>
                                            <th>Gender</th>
                                            <th>GPA</th>
                                            <th>#</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</td>
                                            <th>FullName</th>
                                            <th>BirthDate</th>
                                            <th>Gender</th>
                                            <th>GPA</th>
                                            <th>#</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:choose>
                                            <c:when test="${listStudent == null || listStudent.size() == 0}">
                                                <tr>
                                                    <td>List Student is Empty!</td>
                                                </tr>
                                            </c:when>
                                            <c:otherwise>
                                                <c:forEach items="${listStudent}" var="s">
                                                    <tr>
                                                        <th scope="row">${s.getId()}</th>
                                                        <td>${s.getFullName()}</td>
                                                        <td>${ s.getBirthDate() != null ? dateFormat.format(s.getBirthDate()) : "" }</td>
                                                        <td>${ GENDER[s.getGender() - 1] }</td>
                                                        <td>${s.getGPA()}</td>
                                                        <td>
                                                            <a href="/personalInformation?idStudent=${ s.getId() }">Personal
                                                                Information</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>
                                    </tbody>
                                </table>
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
