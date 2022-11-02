<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="container is-flex is-justify-content-center">
    <form method="POST" action="login.jsp" style="margin-top: 40vh;">
        <%@include file="partials/login-form.html"%>
    </form>
</div>

<p>Username: ${param.username}</p>
<p>Password: ${param.password}</p>

<c:choose>
    <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
        <% response.sendRedirect("/profile.jsp"); %>
    </c:when>
    <c:otherwise>
        <c:if test="${param.username != null && param.password != null}">
            <% response.sendRedirect("/login.jsp"); %>
        </c:if>
    </c:otherwise>
</c:choose>

<%--<%--%>
<%--    if (request.getMethod().equalsIgnoreCase("POST")) {--%>
<%--        String username = request.getHeader("username");--%>
<%--        String password = request.getHeader("password");--%>
<%--        if (username.equals("admin") && password.equals("password")) {--%>
<%--            response.sendRedirect("/profile.jsp");--%>
<%--        } else {--%>
<%--            response.sendRedirect("/login.jsp");--%>
<%--        }--%>
<%--    }--%>
<%--%>--%>
</body>
</html>
