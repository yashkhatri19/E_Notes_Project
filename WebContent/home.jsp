<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.User.UserDetails" %>
<%
    // Login check verification
    UserDetails user2 = (UserDetails) session.getAttribute("userD");
    if(user2 == null) {
        session.setAttribute("Login-error", "please Login..");
        response.sendRedirect("login.jsp");
        return; // Execution yahi rokne ke liye zaroori hai
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home Page - E-Notes</title>
    <%@include file="All_content/Allcss.jsp" %>
</head>
<body>
    <div class="container-fluid">
        <%@include file="All_content/navbar.jsp" %>
        <div class="card mt-3">
            <div class="card-body text-center">
                <img alt="Notes Image" src="img/images.png" class="img-fluid mx-auto" style="width:500px;">
                <h1>START TAKING YOUR NOTES</h1>
                <a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
            </div>
        </div>
    </div>

    <%@include file="All_content/footer.jsp" %>
</body>
</html>