<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Time Manager</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
  	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
  	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700">
  	<link rel="stylesheet" type="text/css" href="fileCss.css">
  	<script type="text/javascript" src="javasc.js"></script>
  	<link rel="stylesheet" type="text/css" href="HomePage.css">
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
    <div id="cnTable">
        <div id="detailcnTable">
            <h3 style="margin-left:20px;margin-top: 6px;">Calendar</h3>
            <div id="groupbuttoncn">
                <a href="Cn Calendar 2.jsp" class="btn buttoncn">Calendar</a>
                <a href="create Event.jsp" class="btn buttoncn" style="margin:10px 0px 10px 0px;">Create Event</a>
                <a href="Find Event.jsp" class="btn buttoncn">Find Event</a>
            </div>
            <h3 style="margin-left:20px;">User</h3>
            <div id="groupbuttoncn">
                <a href="Change Info user.jsp" class="btn buttoncn">Change Info</a>
                <a href="Find user user.jsp" class="btn buttoncn" style="margin:10px 0px 10px 0px;">Find User</a>
                <a href="Home Page.jsp" class="btn buttoncn">Log Out</a>
            </div>
        </div>
    </div>
    <div id="dtTable">
        <form id="qweasdzxc" action="ChangePass" method="post">
            <div class="fullrow">
                <a href="#" class="btn btn-default" style="margin: 3px;" onclick="location.href='Cn Calendar 2.jsp';">Back</a>
                <input type="submit" class="btn btn-default pull-right" style="margin: 3px;" id="submitbtn1" value="Save and exit" />
            </div>
            <div class="mv-container">
	            <div style="margin:10px;">
		            <h3 align="center">Password</h3>
		            <div class="form-group">
			            <label style="margin-top:20px;">Old Password</label>
			            <input type="password" class="form-control has-error" required="true" name="OPass" />
		            </div>
		            <div class="form-group">
			            <label style="margin-top:20px;">New Password</label>
			            <input type="password" class="form-control" required="true" name="NPass" />
		            </div>
		            <div class="form-group">
			            <label style="margin-top:20px;">Comfirm New Password</label>
			            <input type="password" class="form-control" required="true" name="CPNPass" />
	            	</div>
	            </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
<!-- 			        -->