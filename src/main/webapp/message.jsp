<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PollSimulator</title>
</head>
<body>

<b> <a href="home">Go to home page</a></b><br>
<%if (request.getAttribute("link") != "" ){%>
	<b> <a href="add.jsp"><%=request.getAttribute("link")%></a></b>
<% } %>
<br><br>
<h3>
<%=request.getAttribute("message") %>
</h3>
</body>
</html>