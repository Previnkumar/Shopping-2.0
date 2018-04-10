<jsp:useBean id="obj" class="org.login.Login"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logging in....</title>
</head>
<body>
	<%
		String user = request.getParameter("username");
		String psd = request.getParameter("password");
		if(obj.AuthenticateUser(user, psd) == true)
		{
			session.setAttribute("session",true);
			session.removeAttribute("error");
		}
		else
		{
			session.setAttribute("session",false);
			session.setAttribute("error","Please Check your Login credentials");
		}
		response.sendRedirect("Index.jsp");
	%>
</body>
</html>