
<%
if(null == session.getAttribute("username")){  
  response.sendRedirect("SignIn.jsp");
}
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Posts</title>
        <link rel="stylesheet" type="text/css" href="main.css">
    </head>
    <body>
        <header>
            <div id="wrapper">
                <h1>Fun Thread for Gaming</h1>
            </div>
        </header>
        

        <div id ="wrapper">
            <a href='SignIn.jsp' id="logoutButton">Logout</a>

            <br><br><br>
            <c:forEach items="${reviews}" var="review">
                <div><strong>${review.username}</strong></div>
                ${review.reviewText}<br /><br />
                <hr>
            </c:forEach>
            <button onclick="window.location.href='EnterNewPost.jsp'" id="submitNewPostButton">Enter a New Post</button>
        </div>
    </body>
</html>
