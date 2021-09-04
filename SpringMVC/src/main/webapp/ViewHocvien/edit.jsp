<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Edit</h2>
    <form action="/hocvien/edit" method="post">
        <input type="hidden" name="index" value="${index}">
        <table class="table table-bordered table-sm">

            <tbody>
            <tr>
                <td><input type="text" name="name" value="${listEdit.name}" readonly></td>
            </tr>
            <tr>
                <td><input type="text" name="birthday" value="${listEdit.birthday}"></td>
            </tr>
            <tr>
                <td><input type="text" name="address" value="${listEdit.address}"></td>
            </tr>
            <tr>
                <td><input type="text" name="phone" value="${listEdit.phone}"></td>
            </tr>
            <tr>
                <td><input type="text" name="email" value="${listEdit.email}"></td>
            </tr>
            <tr>
                <td><input type="text" name="classroom" value="${listEdit.classroom}"></td>
            </tr>

            <tr>
                <td>
                    <button type="submit" class="btn btn-success">Edit</button>
                    |<a href="/ViewHocvien/show.jsp" class="btn btn-secondary">Back</a>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>


