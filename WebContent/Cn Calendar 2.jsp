<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Time Manager</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700">
	<link rel="stylesheet" type="text/css" href="fileCss.css">
	<script type="text/javascript" src="javasc.js"></script>
	<link rel="stylesheet" type="text/css" href="HomePage.css">
	<script type="text/javascript" src="jscalendar.js"></script>
	<script type="text/javascript"></script>
</head>
<body>
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
<div id="motherTable">
  <div id="mother2">
    <div id="cnTable">
		<div id="detailcnTable">
			<h3 style="margin-left:20px;margin-top: 6px;">Calendar</h3>
			<div id="groupbuttoncn" >
				<a href="Cn Calendar 2.jsp" class="btn buttoncn">Calendar</a>
				<a href="create Event.jsp" class="btn buttoncn" style="margin:10px 0px 10px 0px;">Create Event</a>
				<a href="Find Event.jsp" class="btn buttoncn">Find Event</a>
			</div>
			<h3 style="margin-left:20px;">User</h3>
			<div id="groupbuttoncn" >
				<a href="Change Info user.jsp" class="btn buttoncn">Change Info</a>
				<a href="Find user user.jsp" class="btn buttoncn" style="margin:10px 0px 10px 0px;">Find User</a>
				<a href="Home Page.jsp" class="btn buttoncn">Log Out</a>
			</div>
		</div>
	</div>
    <div id="dtTable" onload="call()"> 
    	<table>
    		<tbody>
    			<tr>
    				<td>
    					<button class="btn btn-default" id ="btleft"><span class="glyphicon glyphicon-chevron-left"></span></button>
	    				<button class="btn btn-default " id ="btright"><span class="glyphicon glyphicon-chevron-right"></span></button>
    				</td>
    				<td>
    					<span id ="thang"></span>
    					<span id ="nam"></span>
    				</td>
    			</tr>
    		</tbody>
    	</table>
    	
    </div>
  </div>
</div>
</body>