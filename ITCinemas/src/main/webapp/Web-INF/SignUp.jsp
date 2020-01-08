<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Admin SignUp Page</title>
<style>
.header{
height:100;
background-color: #000;

}
input[type=text]
{
border-radius: 5;
width: 100%;
background-color: #f0f0f0;
}
input[type=text]
{
border-radius: 5;
width: 80%;
background-color: #f0f0f0;
}

input[type=password]
{
border-radius: 5;
width: 80%;
background-color: #f0f0f0;
}
input[type=submit]
{
border-radius: 5;
width: 60%;
}
input[type=reset]
{
border-radius: 5;
width: 60%;
}

.middle{
margin-top: 50;
margin-left: 200;

}
font{
margin-left: 400;

}
span {
color: #d00;

}
body{
overflow-x: hidden;
background-image: url("bg.jpg");
background-attachment:fixed;
color="#000";
font-weight : bold;
}
</style>
</head>
<body>
${signUp}
<script>
function uname_chck()
{
var a= document.getElementById("admin_signup_uname").value;
var b="^[A-Za-z]+$";
if(!a.match(b))
{
document.getElementById("uname_span").innerHTML="Please enter username in alphabets";

return false;
}
else
document.getElementById("uname_span").innerHTML="";
return true;
}
function pswd_chck()
{
var a= document.getElementById("admin_signup_pswd").value;
var b="^[A-Za-z]+[@!#$%^&*]{1}[0-9]+";
if(!a.match(b))
{
document.getElementById("pswd_span").innerHTML="Please enter username with atleast 1 speacial character & 1 number. Use this format aaa@78";
return false;}
else 
document.getElementById("pswd_span").innerHTML="";
return true;
}

function c_pswd_chck()
{
var a= document.getElementById("admin_signup_pswd").value;
var b=document.getElementById("admin_signup_c_pswd").value;
if(a!=b){
document.getElementById("c_pswd_span").innerHTML="Passwords does not match";
return false;
}
else
document.getElementById("c_pswd_span").innerHTML="";
return true;

}

function phone_chck(){
var a= document.getElementById("admin_signup_phone").value;
var b="^[0-9]{10}$";
if(!a.match(b))
{
document.getElementById("phone_span").innerHTML="Please enter valid phone numbers";
return false;
}
else
document.getElementById("phone_span").innerHTML="";
return true;
}

function email_chck()
{
var a= document.getElementById("admin_signup_email").value;
var b="^[A-Za-z0-9!$._%+-]+@[A-Za-z0-9]+\.[a-z]{2,3}$";
if(!a.match(b))
{
document.getElementById("email_span").innerHTML="Please enter a valid email";
return false;
}
else
document.getElementById("email_span").innerHTML="";
return true;
}

function validate()
{
var a=uname_chck();
var b=pswd_chck();
var c=c_pswd_chck();
var d=phone_chck();
var e=email_chck();
if(a && b && c && d && e)
{
	return true;
}
else
{
	document.getElementById("submit_span").innerHTML="Please fill all the fields correctly";
	return false;
}}	
</script>

<div class="row">
<div class="col-xs-12 ">
<h1 style="text-align: center; background-color: dodgerblue; height: 150px; line-height: 150px; margin-top:-30;"><b>IT Cinemas</b></h1>
</div></div>
<br><br><br>
<font size=5>Admin SignUp</font><br><br>


<form onsubmit="return validate()" action="/AdminSignUp" method="post">
<div class="middle">
          <div class="row "><div class="col-xs-2"></div>
	      <div class="col-xs-2">Username: </div>
                 <div class="col-xs-4 "><input type="text" name="userName" id="admin_signup_uname" onchange="uname_chck()"  placeholder='Used Id' required/>
                 </div>
                 <span id="uname_span"> </span>
          </div><br><br>
	<div class="row "><div class="col-xs-2"></div>
		<div class="col-xs-2">Password </div>
		<div class="col-xs-4"><input type="password" name="password"	 id="admin_signup_pswd" onchange="pswd_chck()"  
placeholder='Password' required/><br><br>
		</div>
		<span id="pswd_span"> </span>
	</div>


<br><br>
	<div class="row "><div class="col-xs-2"></div>
			<div class="col-xs-2">Confirm Password </div>
			<div class="col-xs-4"><input type="password" name="confirmPassword" id="admin_signup_c_pswd" onchange="c_pswd_chck()"  
			placeholder='Re-type your Password here' required/><br><br>
			</div>
			<span id="c_pswd_span"> </span>
	</div>


<div class="row "><div class="col-xs-2"></div>
	<div class="col-xs-2">Phone Number: </div>
<div class="col-xs-4 "><input type="text" name="phone" id="admin_signup_phone" onchange="phone_chck()"  placeholder='Your mobile number' required/>
</div>
<span id="phone_span"> </span>
</div><br><br>

<div class="row "><div class="col-xs-2"></div>
	<div class="col-xs-2">Email: </div>
<div class="col-xs-4 "><input type="text" name="email" id="admin_signup_email" onchange="email_chck()"  placeholder='Eg.abc@x.com' required/>
</div>
<span id="email_span"> </span>
</div><br><br>



<div class="row">
<div class="col-xs-4"></div><div class="col-xs-2"><input type="submit" value="Submit"></div>
	<div class="col-xs-2"><input type=reset value='Cancel'></div></div>
	<br>	</div>
	
	<span style="margin-left: 500;" id="submit_span"></span>
	</form><br><br><br><br><br><br><br>
	<div class="row footer">
<div class="col-xs-12 " style="background-color:dodgerblue; height: 80px; margin-top:100; bottom: 0;" >
<h5 style="line-height: 80px;"> Copyright @ IT Cinemas</h5>
</div></div>

</body>
</html>