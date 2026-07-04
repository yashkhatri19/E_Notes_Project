<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="All content/Allcss.jsp" %>
</head>

<body>
	<%@include file="All content/navbar.jsp" %>
<div class="container-fluid div-color">
  <div class="row">
      <div class="col-md-4 offset-md-4">
		<div class="card mt-5">
		  <div class="card-header text-center text-white bg-custom">
		  <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
		  <h3>login Page</h3>
		  </div>
		   
           <%
             String invalidMsg =(String) session.getAttribute("login-failed");
           if(invalidMsg!=null)
           {
           %>
               <div class="alert alert-success" role="alert">
                    <%=invalidMsg %>
                </div>
        	   <% 
        	   session.removeAttribute("login-failed");
           }
           %>
		  
		  <%
		  String withoutLogin=(String)session.getAttribute("Login-error");
		  if(withoutLogin!=null)
		  {%>
			  <div class="alert alert-success" role="alert">
              <%=withoutLogin %>
          </div>
          
          
		 <% 
		  
		  
		  session.removeAttribute("Login-error"); 
		  }%>
		  
		  <%
		  String lgMsg=(String)session.getAttribute("logoutMsg");
		  if(lgMsg!=null)
		  {%>
			  <div class="alert alert-success" role="alert">
              <%=lgMsg %>
          </div>
          <% 
		  
		  
		  session.removeAttribute("logoutMsg"); 
		  }%>
          
		 
		  
		  
		  <div class="card-body">
		      <form action="loginServlet" method="post">
					<div class="form-group">
					<label>Enter Email</label>
						<input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="uemail">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1"> Enter Password</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Password" name="upassword">
					</div>
				
					<button type="submit" class="btn btn-primary badge-pill btn-block">login</button>
				</form>
		      
		  </div>
		</div>				
		
	</div>
  </div>

</div>
<%@include file="All content/footer.jsp" %>
</body>
</html>