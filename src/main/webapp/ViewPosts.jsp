
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
                <h1>All Posts</h1>
            </div>
        </header>
        

        <main>
            <div><span class="floatRight"><button onclick="window.location.href='SignIn.jsp'" id="logoutButton">Logout</button></span></div>

            <br><br><br>
            <c:forEach items="${reviews}" var="review">
                <div><strong>${review.username}</strong> <span class="floatRight">${review.currentDateTime}</span></div>
                ${review.reviewText}<br /><br />
                <hr>
            </c:forEach>
            <button onclick="window.location.href='EnterNewPost.jsp'" id="submitNewPostButton">Enter a New Post</button>
        </main>
    </body>
</html>
