<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
      
  <head>
    <meta charset="UTF-8">
    <title>Sign-Up/Login Form</title>
 <link rel="stylesheet" href="./resources/css/normalize.css">
 <link rel="stylesheet" href="./resources/css/style.css">
   </head>

  <body>
  
  <div class="form"> 
  
     <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#go">Log In</a></li>
     </ul> 
     
      <div class="tab-content">
        <div id="signup">  
        <form:form action="register" commandName="userForm"> 
          <h1>Sign Up for Free</h1>
          
          <form action="/" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <form:input path="firstName" type="text" requiredautocomplete="off"/>
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <form:input path="lastName" type="text" requiredautocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <form:input path="email" type="email" requiredautocomplete="off"/>
            <form:errors path="email" cssClass="error"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
           <form:input path ="password" type="password" requiredautocomplete="off"/>
           <form:errors path="password" cssClass="error"/>
          </div>
          
          <form:button class="button button-block" type = "submit">Get Started</form:button>
            
            </form>
            </form:form>
          </div>       
      
        <div id="go">
          <form:form action="login" commandName="userForm">   
          <h1>Welcome back!</h1>
          
          <form action="/" method="post">
          
           <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <form:input path="email" type="email" requiredautocomplete="off"/>  
            <form:errors path="email" cssClass="error"/>      
           </div>          
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <form:input path ="password" type="password" requiredautocomplete="off"/>
            <form:errors path="password" cssClass="error"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <form:button class="button button-block" type = "submit">Log In</form:button>
          
          </form>
         </form:form>
        </div>      
       
               
      </div>   <!-- tab-content -->
           
     </div>      
      
      <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    
        <script src="./resources/js/index.js"></script>
      
  </body>
</html>