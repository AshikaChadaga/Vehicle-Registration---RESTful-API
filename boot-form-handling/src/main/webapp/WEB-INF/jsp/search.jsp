<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {
	background-image: url("../images/9.jpg");
        background-repeat:no-repeat;
       background-size:cover;
} 
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: rgba(255,255,255,0.2);
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 8px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #000;
}

.active {
  background-color: #4CAF50;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}
</style>
<body>
	<div class="navbar">
    <a href="${pageContext.request.contextPath}/welcome"><i class="material-icons" style="font-size:23px">home</i><span style="font-size:20px"> Home</span></a> 
    <a href="${pageContext.request.contextPath}/addVehicle"><i class="material-icons" style="font-size:23px">add_circle</i><span style="font-size:20px"> Add Vehicle</span></a>
    <a href="${pageContext.request.contextPath}/getVehicle"><i class="material-icons" style="font-size:23px">add_circle</i><span style="font-size:20px"> Get Vehicles</span></a> 
    <a class="active" href="${pageContext.request.contextPath}/search"><i class="material-icons" style="font-size:23px">add_circle</i><span style="font-size:20px"> Search Vehicle</span></a>
 
	</div>
	<h1 style="text-align:center;color:white;">Welcome to the Search Menu</h1>
	<p style="text-align:center;color:white;">You can search from the following options</p>
	<div class="navbar">
	<form action="/search" method="post">	
    <a href="${pageContext.request.contextPath}/getbyVNumber"><i class="material-icons" style="font-size:23px">assignment_ind</i><span style="font-size:20px"> Show Vehicle by Number</span></a>
	<a href="${pageContext.request.contextPath}/getbyRTOCODE"><i class="material-icons" style="font-size:23px">event_seat</i><span style="font-size:20px"> Show Vehicle by RTOCODE</span></a>
	<a href="${pageContext.request.contextPath}/getbyRTOCount"><i class="material-icons" style="font-size:23px">font_download</i><span style="font-size:20px"> Show Vehicle by RTO Count</span></a>
	<a href="${pageContext.request.contextPath}/getbyVType"><i class="material-icons" style="font-size:23px">attach_money</i><span style="font-size:20px"> Show Vehicle by Type</span></a>
	<a href="${pageContext.request.contextPath}/getbyStatusCode"><i class="material-icons" style="font-size:23px">ondemand_video</i><span style="font-size:20px"> Show Vehicle by State code</span></a>
	
	</form>
	</div>
</body>
</html>