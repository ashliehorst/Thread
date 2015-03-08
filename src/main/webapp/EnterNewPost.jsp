
<%
if(null == session.getAttribute("username")){  
  response.sendRedirect("SignIn.jsp");
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter New Post</title>
        <link rel="stylesheet" type="text/css" href="main.css">
    </head>
    <body>
            <header>
                <div id="wrapper">
                    <h2>Welcome ${sessionScope.username}</h2>
                </div>
            </header>
            <div id ="wrapper">
                <div>
                    <h2>Enter New Post</h2>
                    <span class="floatRight"><button onclick="window.location.href='SignIn.jsp'" id="logoutButton">Logout</button></span>
                </div>
                
                <form action="CreatePost" method="POST" name="newComment">
                    <label for="newReview"></label>
                    <textarea autofocus name="newPost" id="newPostTextArea"></textarea><br />
                    
                    <input type="hidden" name="username" value="${sessionScope.username}">
                   
                    <label for="submit"></label>
                    <input type="submit" name="submit" value="Submit New Post" id="submitNewPostButton">
                </form>
                <button onclick="window.location.href='LoadPosts'" id="viewAll">View All Posts</button>
                <br><br><br>            
            </div>
    </body>
</html>
