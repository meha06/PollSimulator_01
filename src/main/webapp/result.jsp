<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>PollSimulator</title>
</head>
<body>
<table style="border:1px solid black">
<tr>
<td>
<b> <a href="home">Go to home page</a></b><br>
</td>
</tr>
<tr>
<td>
<br><h2>Poll Result:</h2><br>
<%
	String s1 [] = (request.getAttribute("Names").toString()).split("/");
	String s2 [] = (request.getAttribute("Values").toString()).split("/");
	
	out.println("<h3>won : " + s1[0] + "(" + s2[0] + ")</h3>");
	out.println("<h3>loss : " + s1[1] + "("+ s2[1] +")</h3>");
%>
</td>
</tr>
</table>

</body>
</html>