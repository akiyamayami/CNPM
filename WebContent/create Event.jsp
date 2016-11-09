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
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="fileCss.css">
    <script type="text/javascript" src="javasc.js"></script>
    <script type="text/javascript" src="checkvalidation.js"></script>
    <link rel="stylesheet" type="text/css" href="HomePage.css">
    <script type="text/javascript">
        function loadDoc1() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
              if (this.readyState == 4 && this.status == 200) {
                document.getElementById("RP").innerHTML =
                this.responseText;
              }
            };
            xhttp.open("GET", "create Event Repeat.jsp", true);
            xhttp.send();
          }
          function loadDoc2() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
              if (this.readyState == 4 && this.status == 200) {
                document.getElementById("RP").innerHTML =
                this.responseText;
              }
            };
            xhttp.open("GET", "create Event remind.jsp", true);
            xhttp.send();
          }
          function loadDoc3() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
              if (this.readyState == 4 && this.status == 200) {
                document.getElementById("RP").innerHTML =
                this.responseText;
              }
            };
            xhttp.open("GET", "create Event adduser.jsp", true);
            xhttp.send();
          }
    </script>
    </style>
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
        <div id="dtTable">
            <div class="fullrow">
                <a href="Cn Calendar 2.jsp" class="btn btn-default" style="margin: 3px;">Back</a>
                <a href="#" class="btn btn-default pull-right" style="margin: 3px;">Delete</a>
                <a href="#" class="btn btn-default pull-right" style="margin: 3px;" id="subnow"> Save and exit </a>
            </div>
            <div class="mv-container">
                <div class="col-sm-6">
                    <div class="colleft CrEvent" style="border-right:1px solid #ddd; ">
                        <form class="form-group" id="NE">
                            <label style="margin-top:10px;">Name Event</label>
                            <input type="text" class="form-control" name="crEvent" required="true">
                            <table>
                                <tbody>
                                    <tr>
                                        <td style="font-weight: 700;">Time</td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: 700;">Start</td>
                                        <td><input type="date" name="" required="true"></td>
                                        <td><input type="time" name="" required="true"></td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: 700;">End</td>
                                        <td><input type="date" name="" required="true"></td>
                                        <td><input type="time" name="" required="true"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <label style="margin-top:20px;">Location</label>
                            <input type="text" class="form-control">
                            <label style="margin-top:20px;">Detail</label>
                            <textarea type="text" rows="9" cols="2" class="form-control" style="resize: none;"></textarea>
                            <input type="submit" name="" id="subNameEvent" class="hide">
                        </form>
                        <div style="height: 40px; border-top: 1px solid #ddd; padding-top: 15px" >
                            <a href="#" class="btn btn-default pull-right" style="margin-left: 10px;" id="Inviteshow">Invite User</a>
                            <a href="#" class="btn btn-default pull-right" style="margin-left: 10px;" id="Remindshow">Remind</a>
                            <a href="#" class="btn btn-default pull-right" style="margin-left: 10px;" id="Cycleshow" >Cycle</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="colright">
                        <div id="RP">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
