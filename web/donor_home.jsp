<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.*" %>
<html>
<head>
<title>Donor Home</title>
<style>
body {
  font-family: Arial;
  background: #fff5f5;
  text-align: center;
  padding-top: 100px;
}
h2 {
  color: #c62828;
}
</style>
</head>
<body>
<%
String name = (String) session.getAttribute("donorName");
if (name == null) {
    response.sendRedirect("login.jsp");
}
%>

<h2>Welcome, <%= name %>!</h2>
<p>You have successfully logged in as a donor.</p>
<p><a href="recipient.jsp">🔍 Search for Recipients</a></p>
<p><a href="logout.jsp">Logout</a></p>

</body>
</html>
