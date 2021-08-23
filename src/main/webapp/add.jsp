<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>PollSimulator</title>
</head>
<body>
<table style="border:1px solid black">
<tr>
<td style="color:blue;">
<h1>POLL SIMULATOR</h1><br>
</td></tr>

<tr><td>
<h3>Enter candidate details:</h3><br>
<form method="post" action="addCandidate">
 	Candidate ID  : <input type="text" name="roll" id="roll" ><br><br>
 	Candidate Name : <input type="text" name="name" id="name"><br><br>
 
 	<input type="submit" >
 </form>
</td>
</tr>
</table>
</body>
</html>