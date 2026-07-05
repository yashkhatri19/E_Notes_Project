<%@ page
	import="com.User.UserDetails, com.User.Post, com.Dao.PostDao, com.DB.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	UserDetails user1 = (UserDetails) session.getAttribute("userD");
	if (user1 == null) {
		session.setAttribute("Login-error", "Please login first...");
		response.sendRedirect("login.jsp");
		return;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Notes</title>
<%@include file="All_content/Allcss.jsp"%>
</head>
<body>

	<%
		int noteid = Integer.parseInt(request.getParameter("note_id"));
		PostDao post = new PostDao(DBconnect.getConn());
		Post p = post.getDataById(noteid);
	%>

	<div class="container-fluid">
		<%@include file="All_content/navbar.jsp"%>
		<h1 class="text-center">Edit Your Notes</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<form action="EditNotesServlet" method="post">
						<input type="hidden"  value="<%=noteid%>" name="noteid">

						<div class="form-group">
							<label>Enter Title</label> <input type="text"
								class="form-control" name="title" required
								value="<%=p.getTitle()%>">
						</div>

						<div class="form-group">
							<label>Enter Content</label>
							<textarea rows="9" class="form-control" name="content" required><%=p.getContent()%></textarea>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary">Update
								Note</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>

	<%@include file="All_content/footer.jsp"%>
</body>
</html>
