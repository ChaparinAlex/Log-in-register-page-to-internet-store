<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="./resources/css/logsuccess.css">
</head>
<body>
    <div align="center">
        <h2>Welcome ${userForm.email}! You have logged in successfully.</h2>
    </div>
    <h3 align="center" style="color:#00CCCC">
	Let's go to our database of customers!  
    </h3>

    <p align="center" style="color:red"><a href="/united/persons">Person's List</a> </p>
</body>
</html>
