<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Online Blood Donation Management System</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #fafafa;
            color: #333;
        }

        /* Navbar */
        .navbar {
            background-color: #c62828;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 40px;
        }

        .navbar h1 {
            color: white;
            margin: 0;
            font-size: 24px;
            letter-spacing: 1px;
        }

        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .navbar li {
            margin-left: 25px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Hero Banner */
        .hero {
    position: relative;
    height: 300px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    font-size: 38px;
    font-weight: bold;
    text-shadow: 2px 2px 8px #000;
    overflow: hidden;
}

/* 🔹 Background image (local) */
.hero::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url("images/blood.png");  /* 🩸 Local image path */
    background-size: cover;
    background-position: center;
    z-index: 0;
    opacity: 0.9;
}

/* 🔹 Overlay for readability */
.hero::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.3);
    z-index: 1;
}

/* 🔹 Text in front */
.hero span {
    position: relative;
    z-index: 2;
}



        /* Section styling */
        .section {
            max-width: 1000px;
            margin: 40px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            padding: 30px;
        }

        .section h2 {
            color: #b71c1c;
            border-bottom: 2px solid #ef5350;
            padding-bottom: 8px;
        }

       .section img { width: 150px; height: 150px; object-fit: cover; float: right; margin-left: 20px; border-radius: 8px; }



        .section p {
            line-height: 1.6;
            text-align: justify;
        }
        
                .contact {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            max-width: 1000px;
            margin: 40px auto;
            padding: 30px;
        }

        .contact h2 {
            color: #b71c1c;
            border-bottom: 2px solid #ef5350;
            padding-bottom: 8px;
            text-align: left;
        }
        
        .contact form {
            display: flex;
            flex-direction: column;
        }

        .contact input, .contact textarea {
            margin: 10px 0;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        
         .contact button {
            background-color: #c62828;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        .contact button:hover {
            background-color: #b71c1c;
        }


        /* Footer */
        footer {
            background-color: #c62828;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                text-align: center;
            }
            .navbar ul {
                flex-direction: column;
            }
            .navbar li {
                margin: 10px 0;
            }
            .section img {
                float: none;
                display: block;
                margin: 10px auto;
            }
        }
    </style>
</head>

<body>

<!-- 🔹 NAVIGATION BAR -->
<div class="navbar">
    <h1>Online Blood Donation</h1>
    <ul>
        <li><a href="login.jsp">Home</a></li>
        <li><a href="register.jsp">Donor</a></li>
        <li><a href="recipient.jsp">Recipient</a></li>
        <li><a href="#about">About&nbsp;Us</a></li>
        <li><a href="#contact">Contact&nbsp;Us</a></li>
        <li><a href="login.jsp">Login</a></li>
    </ul>
</div>

<!-- 🔹 HERO IMAGE / BANNER -->
<div class="hero">
    <span>Donate Blood, Save Lives ❤️</span>
</div>

<!-- 🔹 WHAT IS BLOOD SECTION -->
<div class="section" id="what-is-blood">
    <h2>What is Blood?</h2>
    <img src="images/cells.png" alt="Blood Cells" width="200" height="300">
    <p>
        Blood is a vital fluid that circulates through the human body, delivering oxygen and nutrients 
        to tissues and organs while removing waste products. It consists of red blood cells, white blood cells,
        platelets, and plasma. Each component plays a key role — red cells carry oxygen, white cells fight infections,
        platelets help in clotting, and plasma transports essential proteins and nutrients.
    </p>
</div>

<!-- ? BENEFITS SECTION -->
<div class="section" id="benefits">
    <h2>Benefits of Blood Donation</h2>
    <img src="images/donate.png" alt="Donate Blood" width="100" height="50">
    <p>
        Donating blood not only saves lives but also promotes better health for donors. Regular blood donation 
        helps in maintaining iron levels, stimulating new blood cell production, and improving cardiovascular health. 
        Beyond the physical benefits, it fosters a sense of contribution and community service. 
        Every unit donated can save up to three lives — making it one of the most noble acts a person can perform.
    </p>
</div>

<!-- 🔹 GENERAL KNOWLEDGE SECTION -->
<div class="section" id="knowledge">
    <h2>General Knowledge</h2>
    <img src="images/gk.png" alt="Knowledge">
    <p>
        Did you know? About 4.5 million lives are saved each year through blood transfusions. 
        One person’s donation can help victims of accidents, cancer patients, and individuals undergoing major surgeries.
        Blood cannot be manufactured — it must come from voluntary donors. It is recommended to donate blood every 
        3 to 4 months to maintain a healthy cycle of regeneration and support those in need.
    </p>
</div>

<!-- 🔹 ABOUT US SECTION -->
<div class="section" id="about">
    <h2>About Us</h2>
    <p>
        The Online Blood Donation Management System is designed to connect donors and recipients through 
        a secure and user-friendly platform. Our mission is to ensure that blood reaches those who need it 
        the most in the shortest possible time. We work with local hospitals and verified donors to make 
        the donation process efficient, transparent, and lifesaving.
    </p>
</div>

<!-- 🔹 CONTACT US SECTION -->
<div class="contact" id="contact">
    <h2>Contact Us</h2>
    <form action="contact_process.jsp" method="post">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Your Email" required>
        <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
        <button type="submit">Send Message</button>
    </form>
</div>


<!-- 🔹 FOOTER -->
<footer>
    &copy; 2025 Online Blood Donation | Developed for College Project by [Prithiga @ Adhvika]
</footer>

</body>
</html>
