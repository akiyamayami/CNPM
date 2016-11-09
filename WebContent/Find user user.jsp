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
</head>
<body>
    <div class="navbar" id="top">
        <div class="container">
            <div class="row">
                <a href="Home Page.jsp" id="q">
                    <span class="glyphicon glyphicon-home"></span> Time Manager
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
            <div class="row" style="height: 100px;">
                <div class="col-md-7">
                    <input type="text" name="" class="input-lg findEv">
                </div>
                <div class="col-md-3">
                    <select class="findEvdn">
			            <option>None</option>
			            <option>Name</option>
			            <option>User</option>
			            <option>Email</option>
			            <option>Frist Name</option>
			          </select>
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-default finds" style="width: 100%;">Find</button>
                </div>
            </div>
	            <table style="width: 100%; table-layout: fixed;">
	                <tbody>
	                    <tr>
	                        <th>User</th>
	                        <th>Frist Name</th>
	                        <th>Last Name</th>
	                        <th>Email</th>
	                    </tr>
	                    <tr>
	                        <td>14110107</td>
	                        <td>Ly</td>
	                        <td>Loi</td>
	                        <td>14110107@gmail.com</td>
	                    </tr>
	                    <tr>
	                        <td>14110108</td>
	                        <td>Ha</td>
	                        <td>Luan</td>
	                        <td>luanha1701@gmail.com</td>
	                    </tr>
	                    <tr>
	                        <td>14110156</td>
	                        <td>Huynh</td>
	                        <td>Phuoc</td>
	                        <td>14110156@gmail.com</td>
	                    </tr>
	                    <tr>
	                        <td>14110174</td>
	                        <td>Vu</td>
	                        <td>Tam</td>
	                        <td>vudinhtam@gmail.com</td>
	                    </tr>
	                </tbody>
	            </table>
        	</div>
	</div>
</body>