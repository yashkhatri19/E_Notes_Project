<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
    <%@include file="All_content/Allcss.jsp" %>
    <style type="text/css">
        .back-img {
            background: url("img/note.jpg");
            width: 100%;
            height: 85vh;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <%@include file="All_content/navbar.jsp" %>

    <div class="container-fluid back-img">
        <div class="text-center" style="padding-top: 20vh;">
            <h1 class="text-white"><i class="fa fa-book" aria-hidden="true"></i> Notes-Save Your Notes</h1>
            <a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Login</a>
            <a href="register.jsp" class="btn btn-light"><i class="fa fa-registered" aria-hidden="true"></i> Register</a>
        </div>
    </div>
    
    <%@include file="All_content/footer.jsp" %>
</body>
</html>