<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Find a Donor</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
  <h2>Search for Blood Donors</h2>
  
  <form method="post" action="recipient.jsp">
    Blood Group:
    <select name="blood_group" required>
      <option value="">--Select--</option>
      <option value="A+">A+</option>
      <option value="A-">A-</option>
      <option value="B+">B+</option>
      <option value="B-">B-</option>
      <option value="O+">O+</option>
      <option value="O-">O-</option>
      <option value="AB+">AB+</option>
      <option value="AB-">AB-</option>
    </select><br><br>

    City: <input type="text" name="city" required><br><br>
    <input type="submit" value="Search Donor">
  </form>

  <hr>

  <%
    String bloodGroup = request.getParameter("blood_group");
    String city = request.getParameter("city");

    if (bloodGroup != null && city != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blood_donation", "root", "admin"); // update password if needed

            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM donors WHERE blood_group=? AND city=?");
            ps.setString(1, bloodGroup);
            ps.setString(2, city);

            ResultSet rs = ps.executeQuery();

            if (!rs.isBeforeFirst()) {
                out.println("<p style='color:red;'><b>No donors available for " + bloodGroup + " in " + city + ".</b></p>");
            } else {
                out.println("<h3>Available Donors:</h3>");
                out.println("<table border='1' cellpadding='8'>");
                out.println("<tr><th>Name</th><th>Email</th><th>Blood Group</th><th>City</th><th>Contact</th><th>Last Donated</th></tr>");
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("name") + "</td>");
                    out.println("<td>" + rs.getString("email") + "</td>");
                    out.println("<td>" + rs.getString("blood_group") + "</td>");
                    out.println("<td>" + rs.getString("city") + "</td>");
                    out.println("<td>" + rs.getString("contact") + "</td>");
                    out.println("<td>" + rs.getString("last_donated") + "</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
            }

            conn.close();
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
    }
  %>

  <br><p><a href="index.jsp">Back to Home</a></p>
</div>
</body>
</html>
