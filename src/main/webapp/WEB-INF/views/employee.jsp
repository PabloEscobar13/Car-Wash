<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Employee Page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">

</head>
<body>

<jsp:include page="myHeader.jsp"/>

<h1>
    Add an Employee
</h1>

<c:url var="addAction" value="/employee/add" ></c:url>

<form:form action="${addAction}" modelAttribute="employee">
    <table>
        <c:if test="${!empty employee.firstName}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8"  disabled="true" />
                    <form:hidden path="id" />
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="firstName">
                    <spring:message text="First Name"/>
                </form:label>
            </td>
            <td>
                <form:input path="firstName" />
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="lastName">
                    <spring:message text="Last Name"/>
                </form:label>
            </td>
            <td>
                <form:input path="lastName" />
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="salary">
                    <spring:message text="Salary"/>
                </form:label>
            </td>
            <td>
                <form:input path="salary" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty employee.firstName}">
                    <input type="submit"
                           value="<spring:message text="Edit Employee"/>" />
                </c:if>
                <c:if test="${empty employee.firstName}">
                    <input type="submit"
                           value="<spring:message text="Add Employee"/>" />
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

<h1>
    Search for Employee by name
</h1>

<form:form action="employee/search/${firstName}/${lastName}" modelAttribute="employee">
        <table>
        <c:if test="${empty employee.firstName}">
            <tr>
                <td>
                    <form:label path="firstName">
                        <spring:message text="First Name"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="firstName" />
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="lastName">
                        <spring:message text="Last Name"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="lastName" />
                </td>
            </tr>
        </c:if>
        <tr>
            <td colspan="2">
                <c:if test="${empty (employee.firstName||employee.lastName)}">
                    <input type="submit"
                           value="<spring:message text="Search Employee"/>" />
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

<br>
<h3>List of Employees</h3>
<c:if test="${!empty listEmployees}">
    <table class="tg">
        <tr>
            <th width="80">Employee ID</th>
            <th width="120">Employee First Name</th>
            <th width="120">Employee Last Name</th>
            <th width="100">Salary</th>
            <%--<th width="100">Address</th>--%>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listEmployees}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.salary}</td>
                <%--<td>${employee.address}</td>--%>
                <td><a href="<c:url value='/employee/edit/${employee.id}' />" >Edit</a></td>
                <td><a href="<c:url value='/employee/remove/${employee.id}' />" >Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<jsp:include page="myFooter.jsp"/>

</body>
</html>