<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<style>
body {
	background-image: url("../images/4.jpg");
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
  background-color: rgba(255, 255, 255, 0.2);
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 8px;
  color: white;
  text-decoration: none;
  font-size: 13px;
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
<font face="verdana" size="4" color="#FFFAFA"><h2 style="text-align:center;">Welcome to the Main Menu</h2></font>
<p style="text-align:center;"><font face="verdana" size="3" color="#FFFAFA">You can choose from the following options</font></p>
</div>
<br></br>
<div class="navbar">
  <a class="active" href="${pageContext.request.contextPath}/welcome"><i class="material-icons" style="font-size:23px">home</i><span style="font-size:20px"> Home</span></a> 
  <a href="${pageContext.request.contextPath}/addVehicle"><i class="material-icons" style="font-size:23px">add_circle</i><span style="font-size:20px"> Add Vehicle</span></a>
  <a href="${pageContext.request.contextPath}/getVehicle"><i class="material-icons" style="font-size:23px">local_movies</i><span style="font-size:20px"> Get Vehicles</span></a> 
  <a href="${pageContext.request.contextPath}/search"><i class="material-icons" style="font-size:23px">search</i><span style="font-size:20px"> Search Vehicles</span></a>
 
</div>

</body>
</html> 
