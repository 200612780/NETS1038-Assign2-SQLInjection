<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Sign-up Form</title>

<style>
    body {
        background-image: url("https://images.unsplash.com/photo-1486286701208-1d58e9338013?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        font-family: Arial, sans-serif;
        color: #000;
    }
    .form-container {
        background-color: rgba(255, 255, 255, 0.4);
        padding: 20px;
        border-radius: 10px;
        width: 50%;
        margin: 50px auto;
    }
    input[type="text"], input[type="password"], input[type="email"] {
        width: 95%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        padding: 10px 20px;
        font-weight: bold;
    }
</style>

</head>
<body>

    <div class="form-container">
        <h1 align="center">User Sign-up Form</h1>

        <form action="<%=request.getContextPath()%>/SignupServlet" method="post">

            <label>User Name</label><br/>
<!--             <input type="text" name="UserName" pattern="[A-Za-z]{1,10}" title="Only alphabets, max 10 characters" required /><br/>
 -->
 			<input type="text" name="username" required /><br/>
 			
            <label>User Email</label><br/>
            <!-- <input type="email" name="UsereMail" pattern="^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$" title="Enter a valid email address" required /><br/> -->
			<input type="email" name="useremail" required /><br/>
			
			<!-- FOR TESTING SQL INJECTION I HAVE REMOVED INPUT VALIDATION FROM SOME ATTRIBUTES -->
			
            <label>Password</label><br/>
            <input type="password" name="password" pattern="[A-Za-z0-9$%&*]{7,10}" title="7-10 characters; letters, digits, $, %, &, * only" required /><br/>

            <label>Confirm Password</label><br/>
            <input type="password" name="confirmPassword" pattern="[A-Za-z0-9$%&*]{7,10}" title="Must match password" required /><br/>

            <label>Full Name</label><br/>
            <input type="text" name="fullname" maxlength="100" required /><br/>

            <label>Preferred Name</label><br/>
            <input type="text" name="preferredName" maxlength="50" /><br/><br/>

            <div align="center">
                <input type="submit" value="Submit" />
            </div>

        </form>
    </div>

</body>
</html>