<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Information</title>

	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"
			type="text/css">
</head>

<body>
    <h1>List Personal Information</h1>

    <a href="/personalInformation-add?idStudent=${ idStudent }">Add Personal Information</a>
	
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
                                            <th>Relationship</th>
                                            <th>BirthDate</th>
                                            <th>Gender</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</td>
                                            <th>FullName</th>
                                            <th>Relationship</th>
                                            <th>BirthDate</th>
                                            <th>Gender</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:choose>
                                            <c:when test="${listInfo == null || listInfo.size() == 0}">
                                                <tr>
                                                    <td>List Personal Information is Empty!</td>
                                                </tr>
                                            </c:when>
                                            <c:otherwise>
                                                <c:forEach items="${listInfo}" var="p">
                                                    <tr>
                                                        <th scope="row">${p.getId()}</th>
                                                        <td>${p.getFullName()}</td>
                                                        <td>${ RELATIONSHIP[p.getRelationship() - 1] }</td>
                                                        <td>${ p.getBirthDate() != null ? dateFormat.format(p.getBirthDate()) : "" }</td>
                                                        <td>${ GENDER[p.getGender() - 1] }</td>
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
