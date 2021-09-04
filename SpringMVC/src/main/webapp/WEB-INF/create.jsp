<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
</head>
<body>


    <h2>Create</h2>
    <form  method="post">
        <table >


            <tr>
                <td><input type="text" placeholder="nhập id" name="id"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="nhập tên" name="name"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="nhập giới tính" name="gender"></td>
            </tr>
            <tr>
                <td>
                    <button type="submit" >Create</button>
                    |<a href="/home">Back</a>
                </td>
            </tr>

        </table>
    </form>


</body>
</html>