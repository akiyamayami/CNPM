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
        <form id="qweasdzxc">
            <div class="fullrow">
                <a href="#" class="btn btn-default" style="margin: 3px;" onclick="location.href='Cn Calendar 2.jsp';">Back</a>
                <input type="submit" class="btn btn-default pull-right" style="margin: 3px;" id="submitbtn1" value="Save and exit" />
                <!--id="btnShowModal"-->
            </div>
            <div class="mv-container">
                <div class="col-sm-6">
                    <div class="colleft  colcheck" style="border-right:  1px solid #ddd;">
                        <h3 align="center">Infomation</h3>
                        <div class="form-group">
                            <label style="margin-top:20px;">Name</label>
                            <input type="text" class="form-control has-error" required="true" id="nameip" />
                        </div>
                        <div class="form-group">
                            <label style="margin-top:20px;">Phone</label>
                            <input type="text" class="form-control" required="true" id="phoneip" />
                        </div>
                        <div class="form-group">
                            <label style="margin-top:20px;">Email</label>
                            <input type="Email" class="form-control" required="true" id="emailip" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="colright  colcheck">
                        <h3 align="center">Password</h3>
                        <div class="form-group">
                            <label style="margin-top:20px;">New Password</label>
                            <input type="password" class="form-control has-error" required id="pass1" minlength="6" id="passip">
                        </div>
                        <div class="form-group">
                            <label style="margin-top:20px;">Comfirm New Password</label>
                            <input type="password" class="form-control" required id="pass2" id="Cpassip">
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <div class="modal fade" data-keyboard="false" data-backdrop="static" id="loginModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <h4 class="modal-title" align="center">Enter Old Password to Complete Change</h4>
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Password" id="inputPassword">
                            </div>
                        </form>
                        <button class="btn btn-primary" type="submit" onclick="location.href='Cn Calendar 2.jsp';">Comfirm</button>
                        <button class="btn btn-primary" id="btnHideModal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
  	<script type="text/javascript">
  	var pass1 = document.getElementById('pass1');
	var pass2 = document.getElementById('pass2');

	var checkPasswordValidity = function() {
	    if (pass1.value != pass2.value) {
	        pass2.setCustomValidity('Passwords must match.');
	    } else {
	        pass2.setCustomValidity('');
	    }        
	};

	pass1.addEventListener('change', checkPasswordValidity, false);
	pass2.addEventListener('change', checkPasswordValidity, false);
  	</script>
  	<script>
  		function validateText(id)
  		{
  			if($(id).val() == null || $(id).val() == "")
  			{
  				var div=$(id).closest("div");
  				div.addClass("has-error");
  				return false;
  			}
  			else
  			{
  				var div=$(id).closest("div");
  				div.removeClass("has-error");
  				div.addClass("has-feedback");
  				div.append('<span class="glyphicon glyphicon-ok form-control-feedback" style="top:38px;"></span>');
  				return true;
  			}
  		}
  		$(document).ready(function(){
  			$('#submitbtn1').click(function(){
  				if(!validateText("#nameip"))
  				{
  					return false;			
  				}
  				if(!validateText("#phoneip"))
  				{
  					return false;			
  				}
  				if(!validateText("#emailip"))
  				{
  					return false;			
  				}
  				if(!validateText("#pass1"))
  				{
  					return false;			
  				}
  				if(!validateText("#pass2"))
  				{
  					return false;			
  				}
  			});
  		});
  	</script>
</body>
</html>
<!-- 			        -->