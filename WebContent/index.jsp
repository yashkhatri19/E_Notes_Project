<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.back-img
{
 background: url("img/note.jpg");
 width:100%;
 height:85vh;
 background-repeat: no-repeat;
 background-size: cover ;
}
</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="All content/Allcss.jsp" %>

</head>
<body>
  <%@include file="All content/navbar.jsp" %>

  
  <div class="container-fluid back-img">
    <div class="text-center">
        <h1 class="text-white"><i class="fa fa-book" aria-hidden="true"></i> Notes-Save Your Notes</h1>
     <a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a>
     <a href="register.jsp" class="btn btn-light"><i class="fa fa-registered" aria-hidden="true"></i>Register</a>
    </div>
  </div>
  
  <%@include file="All content/footer.jsp" %>
</body>
</html>