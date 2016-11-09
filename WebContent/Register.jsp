<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <meta charset="UTF-8">
  <title>Time Manager</title>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
  <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
  <link rel="stylesheet" type="text/css" href="fileCss.css">
  <link rel="stylesheet" type="text/css" href="HomePage.css">
  <script type="text/javascript" src="javasc.js"></script>
  <script type="text/javascript" src="checkvalidation.js"></script>
  </head>
<body translate="no" >
<div class="navbar" id="top">
  <div class="container">
    <div class="row">
      <a href="Home Page.jsp" id="q">
       <span class="glyphicon glyphicon-home"></span>
       Time Manager
      </a>
    </div>
  </div>
</div>
<div class="login">
  <form id="register" name="formRs">
    <H2>Register</H2>
    <input type="text" class="login-username rg-in" autofocus="true" Name="Name" placeholder="Name" required="true" />
    <input type="text" class="login-username rg-in" autofocus="true" Name="ID" placeholder="ID"/>
    <input type="password" class="login-username rg-in" autofocus="true" Name="Password" placeholder="Password" id ="passCom"/>
    <input type="password" class="login-username rg-in" autofocus="true" Name="Confirm_Password" placeholder="Confirm Password" />
    <input type="email" class="login-username rg-in" autofocus="true" Name="Email" placeholder="Email"/>
    <input type="text" class="login-username rg-in" autofocus="true" Name="Phone" placeholder="Phone"/>
    <input type="submit" value="Complete Registration" class="Register-submit login-submit"  />
  </form>
</div>
</body>
<!-- onclick="location.href='Home Page.html';" -->