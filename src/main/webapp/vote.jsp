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
				<h3>Give Your Vote Here: </h3>
				<br> 
				<%
 					String s1 = request.getAttribute("List").toString();
 					String[] lst = (s1.substring(1, s1.length() - 1)).split(",");

 					String s2 = request.getAttribute("idList").toString();
 					String[] lst2 = (s2.substring(1, s2.length() - 1)).split(",");
 				%>

				<form action="voteCandidate">
					Student ID : <input type="text" name="id" id="id">
					<%
						for (int i = 0; i < lst.length; i++) {
							out.println("<br><br><input type=\"radio\" name=\"candidate\" value=\"" + lst2[i].trim() + "\"  > "+ lst[i]);
						}
					%>

					<br>
					<br>
					<br> <input type="submit">
				</form>


			</td>
		</tr>
	</table>



</body>
</html>