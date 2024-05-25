<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/home.css">
</head>
<body>
     <header class="header">
      <nav>
        <div class="nav__logo">
          <a href="#">
            <img src="images/travel-high-resolution-logo-transparent.png" alt="logo" class="logo-color" />
            <img src="images/logo-white.png" alt="logo" class="logo-white" />
          </a>
        </div>
        <ul class="nav__links" id="nav-links">
          <li><a href="#">Home</a></li>
          <li><a href="Adminform.jsp">Admin</a></li>
          <li><a href="About.jsp">About Us</a></li>
          <li><a href="#">Contact Us</a></li>

       
        </ul>
        <div class="log-sign" style="--i: 1.8s">
            <a href="Log.jsp" class="btn transparent">Sign-in</a>
            <a href="Res.jsp" class="btn solid">Sign up</a> 
        </div>
        <div class="nav__menu__btn" id="menu-btn">
          <span><i class="ri-menu-line"></i></span>
        </div>
      </nav>
      <div class="header__container">
        <div class="header__image"></div>
        <div class="header__content">
          <h1>DISCOVER</h1>
          <h2>WORLDWIDE</h2>
          <p>
            We are passionate about uncovering the wonders of our diverse world
            and sharing them with you. Our mission is to inspire a sense of
            discovery, and stories that make our planet unique.
          </p>
          <div>
            <!-- <button class="btn"><a href="#">Book Ticket</a></button> -->
          </div>
        </div>
      </div>
    </header>

    <div class="banner">
      <div class="banner__card">
        <div class="banner__content">
          <h2>20%</h2>
          <h3>OFF</h3>
          <p>Web Design Mastery</p>
        </div>
      </div>
      <div class="banner__card">
        <h4>Asian</h4>
        <p>
          Asia boasts incredibly diverse landscapes, from the Himalayan mountain
          and lush tropical rainforests to pristine beaches.
        </p>
        <a href="#">Read More</a>
      </div>
      <div class="banner__card">
        <h4>Europe</h4>
        <p>
          A visit to Europe isn't complete without experiencing the charm and
          significance of this tiny sovereign state within a city!
        </p>
        <a href="#">Read More</a>
      </div>
      <div class="banner__card">
        <h4>Book Now</h4>
        <p>
          Ensure a clean and intuitive design that allows users to easily
          navigate through the booking process.
        </p>
        <a href="#">Read More</a>
      </div>
    </div>

    <script src="https://unpkg.com/scrollreveal"></script>
   
    
    <script src="js/home.js"></script>
</body>
</html>