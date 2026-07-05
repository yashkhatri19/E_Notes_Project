<%@ page import="com.User.UserDetails, com.User.Post, com.Dao.PostDao, com.DB.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
    // Login check verification
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
    <meta charset="ISO-8859-1">
    <title>Edit Notes</title>
    <%@include file="All_content/Allcss.jsp"%>
</head>
<body>

    <%
        // Safe check for parameter to prevent crash
        String noteIdParam = request.getParameter("note_id");
        int noteid = 0;
        Post p = null;
        
        if(noteIdParam != null) {
            noteid = Integer.parseInt(noteIdParam);
            PostDao post = new PostDao(DBconnect.getConn());
            p = post.getDataById(noteid);
        }
        
        // Agar database mein note na mile toh homepage par bhej do
        if(p == null) {
            response.sendRedirect("showNotes.jsp");
            return;
        }
    %>

    <div class="container-fluid">
        <%@include file="All_content/navbar.jsp"%>
        <h1 class="text-center mt-3">Edit Your Notes</h1>

        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <form action="EditNotesServlet" method="post" class="mt-3">
                        <input type="hidden" value="<%=noteid%>" name="noteid">

                        <div class="form-group">
                            <label>Enter Title</label> 
                            <input type="text" class="form-control" name="title" required value="<%=p.getTitle()%>">
                        </div>

                        <div class="form-group">
                            <label>Enter Content</label>
                            <textarea rows="9" class="form-control" name="content" required><%=p.getContent()%></textarea>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary btn-block">Update Note</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <%@include file="All_content/footer.jsp"%>
</body>
</html>