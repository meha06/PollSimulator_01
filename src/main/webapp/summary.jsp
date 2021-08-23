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
<b> <a href="home">Go to home page</a></b>
</td>
</tr>
<tr>
<td>
<br><h2>Voting Report:</h2><br>
<%
	String s1 [] = (request.getAttribute("Names").toString()).split("/");
	String s2 [] = (request.getAttribute("Values").toString()).split("/");
	
	for(int i=0;i<s1.length ;i++){
		out.println("<h3>"+ s1[i] + " : " + s2[i] + "</h3>");
	}
%>
</td>
</tr>
</table>
</body>
</html>