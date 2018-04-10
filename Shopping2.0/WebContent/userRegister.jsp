<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="org.login.UserPojo"/>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creating new account...</title>
</head>
<body>
<%
	System.out.println(request.getParameter("mail"));
	user.setMAILID(request.getParameter("mail"));
	user.setUSERNAME(request.getParameter("user"));
	user.setPASSWORD(request.getParameter("psd2"));
	user.setMOBILENO(request.getParameter("mobile"));
	user.setADDRESS(request.getParameter("addr"));
	user.setSTATE(request.getParameter("state"));
	user.setCOUNTRY(request.getParameter("country"));
	if(org.login.Register.register(user) == true)
	{
		session.setAttribute("session",true);
		session.removeAttribute("error");
	}
	else
	{
		session.setAttribute("error","Registration Failed. Try again");
		session.setAttribute("session",false);
	}
	response.sendRedirect("Index.jsp");
%>
</body>
</html>