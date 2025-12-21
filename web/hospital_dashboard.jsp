<%@ page import="com.blood.model.User" %>
<%@ page session="true" %>
<%
  User u = (User)session.getAttribute("user");
  if(u==null || !"hospital".equals(u.getRole())){
    response.sendRedirect("login.jsp");
    return;
  }
%>
<html>
<head><title>Hospital Dashboard</title><link rel="stylesheet" href="css/style.css"></head>
<body>
<div class="container">
  <h2>Welcome, <%= u.getName() %> (Hospital)</h2>
  <p><a href="LogoutServlet">Logout</a></p>
  <h3>Hospital Actions</h3>
  <ul>
    <li>Manage stock (extend with HospitalDAO)</li>
    <li>View requests</li>
  </ul>
</div>
</body>
</html>
