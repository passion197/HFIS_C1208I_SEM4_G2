<%-- 
    Document   : bookingstep2
    Created on : Jul 17, 2014, 10:17:42 AM
    Author     : Doll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
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
                            <li><a href="#" title="Hotels">Tour info</a></li>  
                            <li>Booking Tour</li>      
                        </ul>
                        <!--//crumbs-->
                    </nav>


                    <section class="three-fourth">
                        <form id="booking" method="get" action="#" class="booking">
                            <fieldset>
                                <h3>Step <span style="margin-right: 25%">02/03 </span> Confirm info</h3>
                                <div class="row twins">

                                    <s:iterator value="listTourBook">
                                        <div class="f-item">
                                            <label>Total Cost Tour Booking: <span style="font-size: 14px;font-weight: bold; color: red"><s:property value="totalCost" /> $</span></label>
                                            <label>Booking Time: <span style="font-size: 14px;font-weight: bold;"><s:property value="dateorder" /></span></label>
                                            <label>Full Name: <span style="font-size: 14px;font-weight: bold;"><s:property value="firstName" /> <s:property value="lastName" /></span></label>
                                            <label>Telephone: <span style="font-size: 14px;font-weight: bold; color: blue"><s:property value="tel" /></span></label>
                                            <label>Email: <span style="font-size: 14px;font-weight: bold; color: blue"><s:property value="email" /></span></label>
                                            <label>Address: <span style="font-size: 14px;font-weight: bold;"><s:property value="address" /></span></label>
                                            <p></p>
                                        </div>
                                        <div style="font-size: 13px;margin-left: 14%;width: 100%;float: left">
                                            <span>Total Traveler: <b><s:property value="totalTraveler" /></b></span>
                                            <span style="margin-left: 23%"> Adults: <b><s:property value="amountAdults" /></b></span>
                                            <span style="margin-left: 23%"> Children: <b><s:property value="amountChild" /></b></span>
                                            <br/>
                                            <p></p>
                                            <p></p>
                                        </div>

                                    </s:iterator>
                                    <h3>List of Traveler Tour</h3>
                                    <div style="width: 100%;float: left;font-size: 13px;font-weight: bold;margin-left: 10%">
                                        <div style="width: 20%;float: left">
                                            <label>Full Name</label>
                                        </div>
                                        <div style="width: 20%;float:left">
                                            <label>Gender</label>
                                        </div>
                                        <div style="width: 20%;float: left">
                                            <label>Adults/Child</label>
                                        </div>
                                        <div style="width: 20%;float: left">
                                            <label>Passport</label>
                                        </div>
                                    </div>
                                    <s:iterator value="listInfo">
                                        <hr>
                                        <div style="width: 100%;float: left;font-size: 12px;margin-left: 10%">
                                            <div style="width: 20%;float: left">
                                                <label><s:property value="travelerName" /></label>
                                            </div>
                                            <div style="width: 20%;float:left">
                                                <label><s:property value="travelerGender" /></label>
                                            </div>
                                            <div style="width: 20%;float: left">
                                                <label><s:property value="travelerType" /></label>
                                            </div>
                                            <div style="width: 20%;float: left">
                                                <label><s:property value="travelerPassport" /></label>
                                            </div>
                                        </div>
                                    </s:iterator>   
                                    <hr>
                                    <div style="margin-top: 50px;">
                                        <h3>Forms of Payment</h3>
                                    </div>
                                    <div style="margin-left: 35%">
                                        <a href="bookingstep2handlerdir" class="gradient-button">Pay Directly</a>
                                        <a href="bookingstep2handler" class="gradient-button">Pay Online</a>
                                        <a href="bookingstep1?tourID=<s:property value="tourId" />" class="gradient-button" style="margin-left: 10%">Cancel</a>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </section>

                    <!--//breadcrumbs-->
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
