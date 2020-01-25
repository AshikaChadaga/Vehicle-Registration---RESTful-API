<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<style>
body {
	background-image: url("../images/1.jpg");
        background-repeat:no-repeat;
       background-size:cover;
} 
</style>
<style>
            .my_text
            {
                font-family:    Arial, Helvetica, sans-serif;
                font-size: 19px;
                color: #FFFAFA;
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
  color: #FFFAFA;
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
    <a class="active" href="${pageContext.request.contextPath}/getVehicle"><i class="material-icons" style="font-size:23px">add_circle</i><span style="font-size:20px"> Get Vehicles</span></a> 
    <a href="${pageContext.request.contextPath}/search"><i class="material-icons" style="font-size:23px">search</i><span style="font-size:20px"> Search Vehicles</span></a>
	</div>
	<div class="my_text" align='center'>
	<ol type="1">
		<c:forEach var="listValue" items="${vehicles}">
			<li>${listValue}</li>
			<br></br>
		</c:forEach>
	</ol>
	</div>
</body>
</html>