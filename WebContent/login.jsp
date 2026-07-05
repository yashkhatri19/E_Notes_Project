<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <%@include file="All_content/Allcss.jsp" %>
</head>
<body>
    <%@include file="All_content/navbar.jsp" %>

    <div class="container-fluid div-color">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card mt-5">
                    <!-- ICON FIX: Login page ke liye fa-user-circle-o ya fa-sign-in behtar lagta hai -->
                    <div class="card-header text-center text-white bg-custom">
                        <i class="fa fa-sign-in fa-3x" aria-hidden="true"></i>
                        <h3>Login Page</h3>
                    </div>
                   
                    <%
                    // Login Failed Message (Red Alert)
                    String invalidMsg = (String) session.getAttribute("login-failed");
                    if(invalidMsg != null) {
                    %>
                        <div class="alert alert-danger" role="alert">
                            <%=invalidMsg %>
                        </div>
                    <% 
                        session.removeAttribute("login-failed");
                    }
                    %>
                  
                    <%
                    // Access without Login Message (Red Alert)
                    String withoutLogin = (String) session.getAttribute("Login-error");
                    if(withoutLogin != null) {
                    %>
                        <div class="alert alert-danger" role="alert">
                            <%=withoutLogin %>
                        </div>
                    <% 
                        session.removeAttribute("Login-error"); 
                    }
                    %>
                  
                    <%
                    // Logout Success Message (Green Alert)
                    String lgMsg = (String) session.getAttribute("logoutMsg");
                    if(lgMsg != null) {
                    %>
                        <div class="alert alert-success" role="alert">
                            <%=lgMsg %>
                        </div>
                    <% 
                        session.removeAttribute("logoutMsg"); 
                    }
                    %>
                  
                    <div class="card-body">
                        <!-- ACTION PATH FIXED: loginServlet ko LoginServlet kiya (Check your actual Servlet class name) -->
                        <form action="LoginServlet" method="post">
                            <div class="form-group">
                                <label>Enter Email</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uemail" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Enter Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="upassword" required>
                            </div>
                        
                            <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
                        </form>
                    </div>
                </div>              
            </div>
        </div>
    </div>

    <%@include file="All_content/footer.jsp" %>
</body>
</html>