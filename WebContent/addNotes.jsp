<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    UserDetails user1 =(UserDetails)session.getAttribute("userD");
    
    if(user1==null)
    {
    	session.setAttribute("Login-error","please Login..");
    	response.sendRedirect("login.jsp");
    	return;
    }
    %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Notes</title>
<%@include file="All_content/Allcss.jsp" %>
</head>
<body>
    <div class="container-fluid">
    <%@include file="All_content/navbar.jsp" %>
    <h1 class="text-center">Add Your Notes</h1>
    <div class="container">
       <div class="row">
    <div class="col-md-12">
    <form action="AddNotesServlet" method="post">
  <div class="form-group">
  
  
   <div class="form-group">
 <%
   UserDetails us =(UserDetails)session.getAttribute("userD");
  if(us!=null)
  {%>
	  <input type="hidden" value="<%=us.getId() %>" name="uid">
	 <%  
  }
 %>

    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="title" required="required">
  </div>
  
  

 
 <label for="exampleInputEmail1">Enter Content</label>
 <textarea rows="9" cols="" class="form-control" name="content" required="required"></textarea>
 </div>
 
  <div class="container">  
 <button type="submit" class="btn btn-primary">Add Notes</button>
 
  </div>
  
</form>
    </div>
    </div>
    </div>
    </div>
    <%@include file="All_content/footer.jsp" %>
</body>
</html>