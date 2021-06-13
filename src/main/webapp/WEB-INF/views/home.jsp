<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/13/2021
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>Ngôn ngữ</th>
        <th>page size</th>
        <th>Spams filter</th>
        <th>Signature</th>
    </tr>
    <c:forEach var="emailConfig" items="${emailConfigs}">
    <tr>
        <td>${emailConfig.language}</td>
        <td>${emailConfig.pageSize}</td>
        <td>${emailConfig.spamsFilter}</td>
        <td>${emailConfig.signature}</td>
    </tr>
    </c:forEach>
</table>

</body>
</html>
