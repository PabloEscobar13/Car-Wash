<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">
</head>
<body>
    <jsp:include page="myHeader.jsp"/>
    <jsp:include page="menu.jsp"/>

    <c:set var="loginUrl"><c:url value="/login"/></c:set>
    <form method="post" action="${loginUrl}">
        User Name: <input type="text" name="userName" />
        Password: <input type="password" name="password" />
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Login" />
    </form>

    <jsp:include page="myFooter.jsp"/>

    </form>
</body>
</html>