<%--
  Created by IntelliJ IDEA.
  User: Evgeniy
  Date: 22.03.2018
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>Book List</h1>

<c:if test="${!empty listFlats}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Title</th>
            <th width="120">Author</th>
            <th width="120">Price</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listFlats}" var="flat">
            <tr>
                <td>${flat.flat_id}</td>
                <td><a href="/flatdata/${flat.flat_id}" target="_blank">${flat.flatName}</a></td>
                <td>${flat.flatAddress}</td>
                <td>${flat.price/100}${flat.price%100}</td>
                <td><a href="<c:url value='/edit/${flat.flat_id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${flat.flat_id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<h1>Add a Book</h1>

<c:url var="addAction" value="/flats/add"/>

<form:form action="${addAction}" commandName="flat">
    <table>
        <c:if test="${!empty flat.flatName}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="flat_id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="flat_id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="flatInfo">
                    <spring:message text="Info"/>
                </form:label>
            </td>
            <td>
                <form:input path="flatName"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="flatAddress">
                    <spring:message text="Address"/>
                </form:label>
            </td>
            <td>
                <form:input path="flatAddress"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="price">
                    <spring:message text="Price"/>
                </form:label>
            </td>
            <td>
                <form:input path="price"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty flat.flatName}">
                    <input type="submit"
                           value="<spring:message text="Edit Flat"/>"/>
                </c:if>
                <c:if test="${empty flat.flatName}">
                    <input type="submit"
                           value="<spring:message text="Add Flat"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
