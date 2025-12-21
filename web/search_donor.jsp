<%@ page import="java.util.List" %>
<%@ page import="com.blood.model.Donor" %>
<%
  List<Donor> donors = (List<Donor>)request.getAttribute("donors");
%>
<html>
<head><title>Search Results</title><link rel="stylesheet" href="css/style.css"></head>
<body>
<div class="container">
  <h2>Search Results</h2>
  <table border="1" width="100%">
    <tr><th>Name</th><th>Blood Group</th><th>City</th><th>Contact</th></tr>
    <%
      if(donors!=null && !donors.isEmpty()){
        for(Donor d: donors){
          // get user name from DB if needed (simple demo uses contact only)
    %>
      <tr>
        <td>Donor (user id: <%= d.getUserId()%>)</td>
        <td><%= d.getBloodGroup() %></td>
        <td><%= d.getCity() %></td>
        <td><%= d.getContact() %></td>
      </tr>
    <%
        }
      } else {
    %>
      <tr><td colspan="4">No matching donors found.</td></tr>
    <%
      }
    %>
  </table>
  <p><a href="index.jsp">Home</a></p>
</div>
</body>
</html>
