<%@ page import="details.addinfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>PollSimulator</title>
</head>
<body>
	<table style="border: 1px solid black">
		<tr>
			<td style="color: blue;">
				<h1>POLL SIMULATOR</h1>
				<br>
			</td>
		</tr>

		<tr>
			<td>
				<h3>Give Your Vote: </h3>
				<br> 
				<%
				String str=(String)request.getAttribute("result");
				String[] lst = (str.substring(1, str.length()-1)).split(",");
				
				%>
				<form action="vote">
					Student ID : <input type="text" name="id" id="id">
					<%
						for (int i = 0; i < lst.length; i++) {
							out.println("<br><br><input type=\"radio\" name=\"candidate\" value=\"" + lst[i] + "\"  > ");
						}
					%>

					<br>
					<br>
					<br> <input type="submit" value="vote">
				</form>




			</td>
		</tr>
	</table>



</body>
</html>