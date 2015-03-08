
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In Page</title>
        <link rel="stylesheet" type="text/css" href="main.css">
    </head>
    <body>
         <header id ="top">
            <h1>Fun Threads for Gaming</h1>
         </header>
            <div id="wrapper">
                <h2>Sign In</h2>
                <form action="LoginControl" method="POST">
                    <label for="username">Username:</label>
                    <input type="text" name="username" class="loginPage"/>
                    
                    <label for="password">Password:</label>
                    <input type="password" name="password" class="loginPage"/>
                    <br><br>
                    <label for="submit"></label>
                    <input type="submit" value="Login" id="loginButton"/>
                </form>
            </div>
            <div id="wrapper">
                <h2>Register</h2>
                <form action="NewUser" method="POST">
                    <label for="username">Username:</label>
                    <input type="text" name="username" class="loginPage"/>
                    
                    <label for="password">Password:</label>
                    <input type="password" name="password" class="loginPage"/>
                    
                    <label for="password2">Verify Password:</label>
                    <input type="password" name="password2" class="loginPage"/>
                    <br><br>
                    <label for="submit"></label>
                    <input type="submit" value="Create New User" id="loginButton"/>
                </form>
            </div>

    </body>
</html>
