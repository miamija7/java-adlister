<%@ page import="jdk.jfr.Frequency" %><%--
  Created by IntelliJ IDEA.
  User: miaevans
  Date: 11/1/22
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<%@include file="partials/navbar.html"%>

<%! String name = "Dunkin"; %>
<h1><%= name %></h1>

<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<%--<p>"name" parameter: <%= request.getParameter("name") %></p>--%>
<p>"name" parameter: ${param.name}</p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

<c:if test="${param.name == null}">
    <h1>No parameter of name found</h1>
</c:if>

<%-- http://localhost:8080/jsp-lecture.jsp?name=Mia&choice=rock --%>
<c:choose>
    <c:when test='${param.choice.equals("rock")}'>
        <h1>Rock beats paper</h1>
    </c:when>
    <c:otherwise>
        <h1>choice != Rock so... you lose</h1>
    </c:otherwise>
</c:choose>

<%
    String[] nationalParks = {"Rocky Mountain National Park", "Yellowstone National Park", "Big Bend National Park", "Everglades National Park", "Yosemite National Park"};
    // adding array of strings as request attribute
    request.setAttribute("nationalParksArray", nationalParks);
%>
<ul>
<c:forEach items="${nationalParksArray}" var="nationalPark">
    <li>${nationalPark}</li>
</c:forEach>
</ul>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
