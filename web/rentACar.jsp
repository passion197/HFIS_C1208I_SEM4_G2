<%-- 
    Document   : rentACar
    Created on : Jul 21, 2014, 1:13:00 AM
    Author     : Kha Chuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="HandheldFriendly" content="True">
        <title>Book Your Travel - Booking</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen,projection,print">
        <link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen">
        <link rel="shortcut icon" href="images/favicon.ico">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/css3-mediaqueries.js"></script>
        <script type="text/javascript" src="js/jquery.uniform.min.js"></script>
        <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="js/selectnav.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script>
            $(document).ready(function() {
                $("#total").change(function() {
                    var num = $(this).val();
                    var current = $(".fullname").length;
                    if (num >= current) {
                        for (i = current + 1; i <= num; i++) {
                            $("#fullname").after("<p></p><input type='text' class='fullname' name='fullname" + i + "'></input>");
                            $("#gender").after("<p></p><div class='selector' id='uniform-undefined'><select name='gender" + i + "' id='gender' class='gender'><option value='male'>Male</option><option value='female'>Female</option></select></div>");
                            $("#type").after("<p></p><div class='selector' id='uniform-undefined'><select name='type" + i + "' id='type' class='type'><option value='adults'>Adults</option><option value='child'>Child</option></select></div>");
                               }
                    }
                });
            });
        </script>
    </head>
    <body>
        <!--header-->
        <header>
            <div class="wrap clearfix">
                <!--logo-->
                <h1 class="logo"><a href="EWindex" title="Book Your Travel - home"><img src="images/txt/logo.png" alt="Book Your Travel" /></a></h1>
                <!--//logo-->
                <%@include file="displayacc.jsp" %>
                <!--search-->
                <div class="search">
                    <form id="search-form" method="get" action="search-form">
                        <input type="search" placeholder="Search entire site here" name="site_search" id="site_search" /> 
                        <input type="submit" id="submit-site-search" value="submit-site-search" name="submit-site-search"/>
                    </form>
                </div>
                <!--//search-->
                <!--contact-->
                <div class="contact">
                    <span>24/7 Support number</span>
                    <span class="number">1- 555 - 555 - 555</span>
                </div>
                <!--//contact-->
            </div>
            <!--main navigation-->
            <%@include file="menu.jsp" %>
            <!--//main navigation-->
        </header>
        <!--//header-->
        <div class="main" role="main">		
            <div class="wrap clearfix">
                <!--main content-->
                <div class="content clearfix">
                    <!--breadcrumbs-->
                    <nav role="navigation" class="breadcrumbs clearfix">
                        <!--crumbs-->
                        <ul class="crumbs">
                            <li><a href="#" title="Home">Home</a></li>
                            <li><a href="#" title="Hotels">Car Info</a></li>  
                            <li>Rent a Car</li>      
                        </ul>
                        <!--//crumbs-->
                    </nav>
                    <!--//breadcrumbs-->

                    <!--three-fourth content-->

                    <section class="three-fourth">
                        <form id="booking" method="get" action="create" class="booking">
                            <fieldset>
                              <h3>Car Information</h3>
                                <div class="row twins">
                          
                                        
                                        
                                        <div class="f-item">
                                            <label>Car Name: <span style="font-size: 14px;font-weight: bold"><s:property value="selectedCar.carName" /></span></label>
              
                                            <label>Number of seats: <span style="font-size: 14px;font-weight: bold"><s:property value="selectedCar.Seat" /></span></label>
                                            <label>Quantity available <span style="font-size: 14px;font-weight: bold"><s:property value="selectedCar.QuantityAvailable" /></span></label>
                                            <label>Have air condition?: <span style="font-size: 14px;font-weight: bold"><s:property value="" /> No</span></label>
                                            <label>Cost non-driver/day <span style="font-size: 14px;font-weight: bold;color: red"><s:property value="selectedCar.CostNotDriver" /> $</span></label>
                                            <label>Cost have driver/day <span style="font-size: 14px;font-weight: bold;color: red"><s:property value="selectedCar.CostAvailableDriver" /> $</span></label>
                                            <p></p>
                                         
                                        </div>
                                        <figure style="float: right"><img style="width: 300px;height: 150px" src="images/uploads/<s:property value="selectedCar.img" />" /></figure> 

                                </div>
                                <h3>Personal Information</h3>
                                <div class="row twins">
                                    <div class="f-item active">
                                        <label for="first_name">First name</label>
                                        <input type="text" id="first_name" name="first_name" value="<s:property value="firstName" />" required="true" maxlength="20"/>
                                    </div>
                                    <div class="f-item last">
                                        <label for="last_name">Last name</label>
                                        <input type="text" id="last_name" name="last_name" value="<s:property value="lastName" />" required="true" maxlength="20" />
                                    </div>
                                </div>

                                <div class="row twins">
                                    <div class="f-item">
                                        <label for="tel">Telephone</label>
                                        <input type="text" id="tel" name="tel" value="<s:property value="tel" />" required="true" maxlength="15" />
                                    </div>
                                    <div class="f-item">
                                        <label for="email">Email address</label>
                                        <input type="email" id="email" name="email" value="<s:property value="email" />" required="true" maxlength="50" />
                                    </div>
                                    <span class="info">You’ll receive a order status email!</span>
                                </div>

                                <div class="row twins">
                                    <div class="f-item">
                                        <label for="address">Address</label>
                                        <input type="text" id="address" name="address" value="<s:property value="address" />" required="true" maxlength="100" />
                                    </div>
                                </div>
                                <input type="submit" class="gradient-button" value="Order Now" id="next-step">
                            </fieldset>
                        </form>
                    </section>
                    <!--//three-fourth content-->

                    <!--right sidebar-->
                    <aside class="right-sidebar">
                        <!--Booking details-->
                        <article class="booking-details clearfix" style="display: none">
                            <h1>Best ipsum hotel 
                                <span class="stars">
                                    <img src="images/ico/star.png" alt="">
                                    <img src="images/ico/star.png" alt="">
                                    <img src="images/ico/star.png" alt="">
                                    <img src="images/ico/star.png" alt="">
                                </span>
                            </h1>
                            <span class="address">Marylebone, London</span>
                            <span class="rating"> 8 /10</span>
                            <div class="booking-info">
                                <h6>Rooms</h6>
                                <p>Standard twin room</p>
                                <h6>Room Description</h6>
                                <p>Room only</p>
                                <h6>Check-in Date</h6>
                                <p>14-11-12</p>
                                <h6>Check-out Date</h6>
                                <p>15-11-12</p>
                                <h6>Room(s)</h6>
                                <p>1 night, 1 room, max. 2 people. </p>
                            </div>
                            <div class="price">
                                <p class="total">Total Price:  $ 55,00</p>
                                <p>VAT (20%) included</p>
                            </div>
                        </article>
                        <!--//Booking details-->

                        <!--Need Help Booking?-->
                        <article class="default clearfix">
                            <h2>Need Help Booking?</h2>
                            <p>Call our customer services team on the number below to speak to one of our advisors who will help you with all of your holiday needs.</p>
                            <p class="number">1- 555 - 555 - 555</p>
                        </article>
                        <!--//Need Help Booking?-->
                    </aside>
                    <!--//right sidebar-->
                </div>
                <!--//main content-->
            </div>
        </div>
        <footer>
            <div class="wrap clearfix">
                <!--column-->
                <article class="one-fourth">
                    <h3>Book Your Travel</h3>
                    <p>1400 Pennsylvania Ave. Washington, DC</p>
                    <p><em>P:</em> 24/7 customer support: 1-555-555-5555</p>
                    <p><em>E:</em> <a href="#" title="booking@mail.com">booking@mail.com</a></p>
                </article>
                <!--//column-->

                <!--column-->
                <article class="one-fourth">
                    <h3>Customer support</h3>
                    <ul>
                        <li><a href="#" title="Faq">Faq</a></li>
                        <li><a href="#" title="How do I make a reservation?">How do I make a reservation?</a></li>
                        <li><a href="#" title="Payment options">Payment options</a></li>
                        <li><a href="#" title="Booking tips">Booking tips</a></li>
                    </ul>
                </article>
                <!--//column-->

                <!--column-->
                <article class="one-fourth">
                    <h3>Follow us</h3>
                    <ul class="social">
                        <li class="facebook"><a href="#" title="facebook">facebook</a></li>
                        <li class="youtube"><a href="#" title="youtube">youtube</a></li>
                        <li class="rss"><a href="#" title="rss">rss</a></li>
                        <li class="linkedin"><a href="#" title="linkedin">linkedin</a></li>
                        <li class="googleplus"><a href="#" title="googleplus">googleplus</a></li>
                        <li class="twitter"><a href="#" title="twitter">twitter</a></li>
                        <li class="vimeo"><a href="#" title="vimeo">vimeo</a></li>
                        <li class="pinterest last"><a href="#" title="pinterest">pinterest</a></li>
                    </ul>
                </article>
                <!--//column-->

                <!--column-->
                <article class="one-fourth last">
                    <h3>Don’t miss our exclusive offers</h3>
                    <form id="newsletter" action="newsletter.php" method="post">
                        <fieldset>
                            <input type="email" id="newsletter_signup" name="newsletter_signup" placeholder="Enter your email here">
                            <input type="submit" id="newsletter_submit" name="newsletter_submit" value="Signup" class="gradient-button">
                        </fieldset>
                    </form>
                </article>
                <!--//column-->

                <section class="bottom">
                    <p class="copy">Copyright 2012 Book your travel ltd. All rights reserved</p>
                    <nav>
                        <ul>
                            <li class="first"><a href="#" title="About us">About us</a></li>
                            <li><a href="contact.html" title="Contact">Contact</a></li>
                            <li><a href="#" title="Partners">Partners</a></li>
                            <li><a href="#" title="Customer service">Customer service</a></li>
                            <li><a href="#" title="FAQ">FAQ</a></li>
                            <li><a href="#" title="Careers">Careers</a></li>
                            <li><a href="#" title="Terms &amp; Conditions">Terms &amp; Conditions</a></li>
                            <li><a href="#" title="Privacy statement">Privacy statement</a></li>
                        </ul>
                    </nav>
                </section>
            </div>
        </footer>
        <script>
            // Initiate selectnav function
            selectnav();
        </script>
    </body>


</html>