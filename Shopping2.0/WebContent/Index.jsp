<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/IndexStyle.css">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping2.0</title>
</head>
<body>

<!-- To Display Error -->
<%

if(session.getAttribute("error")==null || session.getAttribute("error").toString().equals(""))
{
	
}
else
{
	out.write("<script>alert(\""+session.getAttribute("error")+"\");</script");
	session.removeAttribute("error");
}
%>

<!-- Top Navigation bar -->

<div class="nav-bar">
	<img src="images/shoppingIcon.jpg" width="75" height="50" alt="ICON"/>
	<a href="#">Home</a>
	<a href="#">MyCart</a>
	<%
	if(session.getAttribute("session") == null || Boolean.valueOf(session.getAttribute("session").toString())==false)
	{
	%>
	<a href="#" id="login"style="float:right">Login/Register</a>
	<%
	}
	else
	{
	%>
	<a href="userLogout.jsp" id="logout"style="float:right">Logout</a>
	<%
	}
	%>
</div>

<!-- Login -->

<div id="login-popup" class="popup">
	<div class="popup-content">
		<div class="popup-header">
			<span id="login-popup-close"class="popup-close">&times;</span>
			<h2>LOGIN</h2>
		</div>
		<div class="popup-body">
			<form action="userLogin.jsp" method="post" onsubmit="return LoginValidation()">
				<input type="text" class="textbox" id="username" name="username" spellcheck="false" autocomplete="off" placeholder="Username" size=25/><br>
				<input type="password" class="textbox" id="password" name="password" spellcheck="false" autocomplete="off" placeholder="Password" size=25/><br>
				<input type="submit" class="button" id="loginsubmit" value="LOGIN" name="loginsubmit"/>
				<p id="open-register">New to Shopping?</p>
			</form>
		</div>
	</div>
</div>

<!-- Register -->

<div id="register-popup" class="popup">
	<div class="popup-content">
		<div class="popup-header">
			<span id="register-popup-close"class="popup-close">&times;</span>
			<h2>REGISTER</h2>
		</div>
		<div class="popup-body">
			<form action="userRegister.jsp" method="post" onsubmit="return RegisterValidation()">
				<input type="text" class="textbox" id="mail" name="mail" spellcheck="false" autocomplete="off" placeholder="Mail id" size=25/><br>
				<input type="text" class="textbox" id="user" name="user" spellcheck="false" autocomplete="off" placeholder="Username" size=25/><br>
				<input type="password" class="textbox" id="psd1" name="psd1" placeholder="Password" size=25/><br>
				<input type="password" class="textbox" id="psd2" name="psd2" placeholder="Re-type Password" size=25/><br>
				<input type="text" class="textbox" id="mobile" name="mobile" spellcheck="false" autocomplete="off" placeholder="Mobile No" size=25/><br>
				<input type="text" class="textbox" id="addr" name="addr" spellcheck="false" autocomplete="off" placeholder="Address" size=25/><br>
				<input type="text" class="textbox" id="state" name="state" spellcheck="false" autocomplete="off" placeholder="State" size=25/><br>
				<input type="text" class="textbox" id="country" name="country" spellcheck="false" autocomplete="off" placeholder="Country" size=25/><br>
				<input type="submit" class="button" id="Registersubmit" value="REGISTER" name="Registersubmit"/>
				<p id="open-login">Have an Account?</p>
			</form>
		</div>
	</div>
</div>

<!-- footer -->
<div class="footer">
		<p>Contact:</p>
		<p>Mail@ prevink27@gmail.com</p>
		<p>Call@ 9566917026</p>
		<p id="admin-link"class="foot-link">Admin Login?</p>
</div>


<!-- Admin Login -->
<div id="admin-popup" class="popup">
	<div class="popup-content">
		<div class="popup-header">
			<span id="admin-popup-close"class="popup-close">&times;</span>
			<h2>ADMIN LOGIN</h2>
		</div>
		<div class="popup-body">
			<form action="adminLogin.jsp" method="post">
				<input type="text" class="textbox" id="adname" name="adname" spellcheck="false" autocomplete="off" placeholder="Username" size=25/><br>
				<input type="password" class="textbox" id="adpsd" name="adpsd" spellcheck="false" autocomplete="off" placeholder="Password" size=25/><br>
				<input type="submit" class="button" id="adminsubmit" value="Proceed" name="adminsubmit"/>
			</form>
		</div>
	</div>
</div>

</body>
<script src="scripts/IndexScript.js"></script>
</html>