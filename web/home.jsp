<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Online Blood Donation</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
  <h1>Online Blood Donation Management</h1>
  <p><a href="register.jsp">Register</a> | <a href="login.jsp">Login</a></p>

  <h3>Request Blood</h3>
  <form action="RequestBloodServlet" method="post">
    Name: <input type="text" name="requester_name" required><br>
    Blood Group: <input type="text" name="blood_group" required><br>
    City: <input type="text" name="city" required><br>
    Contact: <input type="text" name="contact" required><br>
    <input type="submit" value="Submit Request">
  </form>

  <h3>Search Donor</h3>
  <form action="SearchDonorServlet" method="get">
    Blood Group: <input type="text" name="blood_group" required>
    City: <input type="text" name="city" required>
    <input type="submit" value="Search">
  </form>
</div>
</body>
</html>
