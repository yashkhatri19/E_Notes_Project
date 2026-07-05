<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.User.UserDetails" %>
<%
    // Login check verification
    UserDetails user1 = (UserDetails) session.getAttribute("userD");
    if(user1 == null) {
        session.setAttribute("Login-error", "please Login..");
        response.sendRedirect("login.jsp");
        return;
    }
%>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Notes</title>
    <%@include file="All_content/Allcss.jsp" %>
</head>
<body>
    <div class="container-fluid">
        <%@include file="All_content/navbar.jsp" %>
        
        <h1 class="text-center mt-3">Add Your Notes</h1>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form action="AddNotesServlet" method="post" class="mt-3">
                        
                        <%-- Hidden field to pass user ID --%>
                        <% if(user1 != null) { %>
                            <input type="hidden" value="<%=user1.getId() %>" name="uid">
                        <% } %>

                        <div class="form-group">
                            <label for="noteTitle">Enter Title</label>
                            <input type="text" class="form-control" id="noteTitle" placeholder="Enter Title" name="title" required>
                        </div>
                      
                        <div class="form-group">
                            <label for="noteContent">Enter Content</label>
                            <textarea rows="9" id="noteContent" class="form-control" placeholder="Enter your content here..." name="content" required></textarea>
                        </div>
                     
                        <div class="text-center">  
                            <button type="submit" class="btn btn-primary btn-block">Add Notes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <%@include file="All_content/footer.jsp" %>
</body>
</html>