<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function name_chck()
{
var a= document.getElementById("movieName").value;
var b="^[A-Za-z0-9]+$";
if(!a.match(b))
{
document.getElementById("mname").innerHTML="Please enter correct Movie name";
return false;
}
else
document.getElementById("mname").innerHTML="";
return true;
}

function id_chck()
{
var a= document.getElementById("movieId").value;
var b="^[0-9]{4}$";
if(!a.match(b))
{
document.getElementById("mid").innerHTML="Please enter correct Movie name";
return false;
}
else
document.getElementById("mid").innerHTML="";
return true;
}


function ratingChck()
{
var a= document.getElementById("movieRating").value;
var b="^[0-5]{1}$";
if(!a.matches(b))
{
document.getElementById("mr").innerHTML="Please give valid Rating";
return false;
}
else
document.getElementById("mr").innerHTML="";
return true;
}

function availChck()
{
var a= document.getElementById("availableSeats").value;
var b="^[0-9]{1,3}$";
if(!a.match(b))
{
document.getElementById("mseat").innerHTML="Please enter correct value";
return false;
}
else
document.getElementById("mseat").innerHTML="";
return true;
}

function totalChck()
{
var a= document.getElementById("totalSeats").value;
var b="^[0-9]{1,3}$";
if(!a.match(b))
{
document.getElementById("mtseat").innerHTML="Please enter correct value";
return false;
}
else
document.getElementById("mtseat").innerHTML="";
return true;
}


</script>
<form action="/NewFile" method =POST>
<h4>Add Movie </h4>
Movie Id:<input type=text name=movieId id=movieId onchange="id_chck()"/><span id='mid'></span><br><br>
Movie Name:<input type=text name=movieName id=movieName onchange="name_chck()" />
<span id='mname'></span><br><br>
Available Seats:<input type=text name=availableSeats id=availableSeats onchange="availChck()" />
<span id='mseat'></span><br><br>
Movie Rating:<input type=text name=movieRating id=movieRating onchange="ratingChck()" />
<span id='mr'></span><br><br>
Total Seats:<input type=text name=totalSeats id=totalSeats onchange="totalChck()" />
<span id='mtseat'></span><br><br>
<input type=submit />
</form>
${deloitte}
</body>
</html>