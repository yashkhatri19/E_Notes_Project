<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
    UserDetails user2 =(UserDetails)session.getAttribute("userD");
    
    if(user2==null)
    {
    	session.setAttribute("Login-error","please Login..");
    	response.sendRedirect("login.jsp");
    	return;
    }
    %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="All content/Allcss.jsp" %>
</head>
<body>
    
    <div class="container-fluid">
    <%@include file="All content/navbar.jsp" %>
    <div class="card ">
    <div class="card-body text-center">
          <img alt="" src="img/images.png" class="img-fluid mx-auto" style="width:500px;">
                 <h1>START TAKING YOUR NOTES</h1>
       <a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
    </div>
    </div>
    </div>
    <%@include file="All content/footer.jsp" %>
</body>
</html>