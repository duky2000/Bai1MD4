<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>

</head>
<body>


    <a href="/create" >Create</a>
    <table>


        <c:forEach items="${list}" var="customer" varStatus="loop">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.gender}</td>
                <td><a href="/edit?index=${loop.index}">Edit</a></td>
                <td><a href="/delete?index=${loop.index}"  >Delete</a></td>

            </tr>
        </c:forEach>



    </table>

</body>
</html>

