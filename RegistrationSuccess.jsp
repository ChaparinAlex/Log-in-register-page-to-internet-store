<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Registration Success</title>
   <link rel="stylesheet" href="./resources/css/regsuccess.css">
</head>
<body>
    <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Registration Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Thank you for registering! Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>First name:</td>
                <td>${userForm.firstName}</td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td>${userForm.lastName}</td>
            </tr>
            <tr>
                <td>E-mail:</td>
                <td>${userForm.email}</td>
            </tr>
            
        </table>
    </div>
    
    <h3 >
	Let's go to our database of customers!  
    </h3>

    <p style="color:red"><a href="/united/persons">Person's List</a> </p>
   
</body>
</html>
