<%@ page
	import="com.User.Post, com.Dao.PostDao, java.util.List, com.DB.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	UserDetails user3 = (UserDetails) session.getAttribute("userD");
	if (user3 == null) {
		session.setAttribute("Login-error", "please Login..");
		response.sendRedirect("login.jsp");
		return;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show notes page</title>
<%@include file="All content/Allcss.jsp"%>
</head>
<body>
	<%@include file="All content/navbar.jsp"%>

	<%
		String updateMsg = (String) session.getAttribute("updateMsg");
		if (updateMsg != null) {
	%>
	<div class="alert alert-success" role="alert">
		<%=updateMsg%>
	</div>
	<%
		session.removeAttribute("updateMsg");
		}
	%>
	
	
	
	<%
		String wrongMsg = (String) session.getAttribute("wrongMsg");
		if (wrongMsg != null) {
	%>
	<div class="alert alert-danger" role="alert">
		<%=wrongMsg%>
	</div>
	<%
		session.removeAttribute("wrongMsg");
		}
	%>


	<div class="container">
		<h2 class="text-center">All Notes</h2>
		<div class="row">
			<div class="col-md-12">

				<%
					if (user3 != null) {
						PostDao ob = new PostDao(DBconnect.getConn());
						List<Post> postList = ob.getData(user3.getId());
						for (Post po : postList) {
				%>
				<div class="card mt-3">
					<img alt="" src="img/images.png" class="card-img-top mt-2 mx-auto"
						style="max-width: 150px;">
					<div class="card-body p-4">
						<h5 class="card-title"><%=po.getTitle()%></h5>
						<p><%=po.getContent()%></p>

						<p>
							<b class="text-info">Published by: <%=user3.getName()%></b>
						</p>

						<p>
							<b class="text-info">Published Date: <%=po.getPdate()%></b>
						</p>

						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=po.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="ed.jsp?note_id=<%=po.getId()%>" class="btn btn-primary">Edit</a>
						</div>
					</div>
				</div>
				<%
					}
					}
				%>

			</div>
		</div>
	</div>
</body>
</html>
