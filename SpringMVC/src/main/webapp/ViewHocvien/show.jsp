<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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
    <h2>Quarn lý sản phẩm</h2>
    <a href="/hocvien/create" class="btn btn-success">Create</a>
    <form action="/hocvien/find" method="get">
        <input type="text" class="form-control" placeholder="find name" name="find">
        <button  type="submit" class="btn btn-info">Find</button>
    </form>
    <table class="table table-dark">
        <thead>
        <tr>

            <th>Name</th>
            <th>Birthday</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Classroom</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="hv" varStatus="loop">
            <tr>
                <td>${hv.name}</td>
                <td>${hv.birthday}</td>
                <td>${hv.address}</td>
                <td>${hv.phone}</td>
                <td>${hv.email}</td>
                <td>${hv.classroom}</td>
                <td><a href="/hocvien/edit?index=${loop.index}" class="btn btn-warning">Edit</a></td>
                <td><a href="#" onclick="showMess(${loop.index})" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>

        </tbody>
        <script>
            function showMess(index){
                let option = confirm("Bạn có chắc muốn xóa không ?")
                if (option==true){
                    window.location.href = "/hocvien/delete?index="+index;
                }
            }
        </script>
    </table>
</div>
</body>
</html>

