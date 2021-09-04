<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>

</head>
<body>


<h2>Edit</h2>
<form method="post">
    <table>

        <tbody>
        <tr>
            <td><input type="text" name="id" value="${editlist.id}" readonly></td>
        </tr>
        <tr>
            <td><input type="text" name="name" value="${editlist.name}"></td>
        </tr>
        <tr>
            <td><input type="text" name="gender" value="${editlist.gender}"></td>
        </tr>
        <tr>
            <td>
                <button type="submit">Edit</button>
                |<a href="/home">Back</a>
            </td>
        </tr>
        </tbody>
    </table>
</form>


</body>
</html>


