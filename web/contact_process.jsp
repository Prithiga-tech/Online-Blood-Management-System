<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Form Submitted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fafafa;
            text-align: center;
            padding: 50px;
        }
        .box {
            background: white;
            padding: 30px;
            border-radius: 10px;
            max-width: 500px;
            margin: 0 auto;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        h2 {
            color: #c62828;
        }
        a {
            text-decoration: none;
            color: white;
            background: #c62828;
            padding: 10px 20px;
            border-radius: 6px;
        }
        a:hover {
            background: #b71c1c;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2>✅ Message Sent Successfully!</h2>
        <p>Thank you, <strong><%= request.getParameter("name") %></strong>.</p>
        <p>We’ve received your message and will contact you at <strong><%= request.getParameter("email") %></strong>.</p>
        <p>Your Message:</p>
        <blockquote><%= request.getParameter("message") %></blockquote>
        <br>
        <a href="index.jsp">Go Back to Home</a>
    </div>
</body>
</html>
