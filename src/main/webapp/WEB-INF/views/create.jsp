<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>new EmailConfig</title>
</head>
<body>
<h3>create neu email configuration</h3>
<form:form method="post" action="addEmailConfig" modelAttribute="emailConfig">
    <table>
        <tr>
            <td><form:label path="language">Languages: </form:label></td>
            <td><form:select path="language" items="${languages}"/>
            </td>
        </tr>
        <tr>
            <td><form:label path="pageSize">Page size: </form:label></td>
            <td>Show <form:select path="pageSize" items="${pageSize}"/> emails per page

            </td>
        </tr>
        <tr>
            <td><form:label path="spamsFilter">Spams Filter: </form:label></td>
            <td><form:checkbox path="spamsFilter"/> Enable spams  filter</td>
        </tr>
        <tr>
            <td><form:label path="signature">Signature: </form:label></td>
            <td><form:textarea  path="signature"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
            <td><a href="/home">cancel</a></td>
        </tr>
    </table>
</form:form>
</body>
</html>