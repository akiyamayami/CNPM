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
                <h3 style="margin-left:20px;">Admin</h3>
                <div id="groupbuttoncn">
                    <a href="#" class="btn buttoncn" style="margin:10px 0px 10px 0px;">Find User</a>
                    <a href="Home Page.jsp" class="btn buttoncn">Log Out</a>
                </div>
            </div>
        </div>
        <div id="dtTable" style="width: 1073px;">
            <div class="col-md-6">
                <div id="search">
                    <div class="col-md-7">
                        <input type="email" class="form-control">
                    </div>
                    <div class="col-md-3">
                        <select class="form-control">
                        <option>Theo ten</option>
                        <option>Theo ho</option>
                        <option>Theo ten tai khoan</option>
                        <option>Theo Email</option>
                      </select>
                    </div>
                    <div class="col-md-2">
                        <button class="form-control">Tim</button>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div id="tableDS">
                    <div class="panel panel-default">
                        <div class="panel-heading" align="center" style="font-size:24px">
                        	List User
                        </div>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Tai Khoan</th>
                                    <th>Ho</th>
                                    <th>Ten</th>
                                    <th>Email</th>
                                    <th>Trang Thai</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>2542</td>
                                    <td>Ly</td>
                                    <td>Loi</td>
                                    <td>123@gmail.com </td>
                                    <td><span class=" fa fa-lock" aria-hidden="true" id="us1"></span> </td>
                                </tr>
                                <tr>
                                    <td>2532</td>
                                    <td>Nguyen</td>
                                    <td>Chuong</td>
                                    <td>1we123@gmail.com </td>
                                    <td><span class="fa fa-lock" aria-hidden="true" id="us2"></span> </td>
                                </tr>
                                <tr>
                                    <td>2551</td>
                                    <td>Hoang</td>
                                    <td>Long</td>
                                    <td>1as123@gmail.com </td>
                                    <td><span class="fa fa-lock" aria-hidden="true" id="us3"></span> </td>
                                </tr>
                                <tr>
                                    <td>2542</td>
                                    <td>Ly</td>
                                    <td>Loi</td>
                                    <td>123@gmail.com </td>
                                    <td><span class="fa fa-lock" aria-hidden="true" id="us4"></span> </td>
                                </tr>
                                <tr>
                                    <td>2532</td>
                                    <td>Nguyen</td>
                                    <td>Chuong</td>
                                    <td>1we123@gmail.com </td>
                                    <td><span class="fa fa-lock" aria-hidden="true" id="us5"></span> </td>
                                </tr>
                                <tr>
                                    <td>2551</td>
                                    <td>Hoang</td>
                                    <td>Long</td>
                                    <td>1as123@gmail.com </td>
                                    <td><span class="fa fa-lock" aria-hidden="true" id="us6"></span> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>