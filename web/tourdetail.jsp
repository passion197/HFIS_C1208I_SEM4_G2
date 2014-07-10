<%-- 
    Document   : tourdetail
    Created on : Jul 8, 2014, 9:49:08 PM
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
        <title>Book Your Travel - Tour</title>
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
                            <li><a href="#" title="Travel guides">Tour</a></li>
                            <li>Tour Information</li>                                       
                        </ul>
                        <!--//crumbs-->

                    </nav>
                    <!--//breadcrumbs-->

                    <!--three-fourth content-->
                    <section class="three-fourth">
                        <s:iterator value="listTour">
                            <h1><s:property value="tourName" /></h1>
                            <nav class="inner-nav">
                                <ul>
                                    <li class="active"><a href="#general_info" title="Tour Program">Tour Information Detail</a></li>
                                    <li class=""><a href="#nightlife" title="Policies Information">Policies Information</a></li>
                                </ul>
                            </nav>

                            <!--General information-->
                            <section style="display: block;" id="general_info" class="tab-content">
                                <article>
                                    <h1><s:property value="tourName" /></h1>
                                    <figure class="left_pic"><img src="images/uploads/<s:property value="img" />" alt="Things to do"></figure>
                                    <p class="teaser" style="border-bottom:1px dotted #dcdcdc">Code Tour: <s:property value="tourID" /> .</p>
                                    <p class="teaser" style="border-bottom:1px dotted #dcdcdc">Duration: <s:property value="Dates" /> days.</p>
                                    <p class="teaser" style="border-bottom:1px dotted #dcdcdc">Price Adults: <s:property value="costAdults" /> $</p>
                                    <p class="teaser" style="border-bottom:1px dotted #dcdcdc">Price Child: <s:property value="costChild" /> $</p>
                                    <p class="teaser" style="border-bottom:1px dotted #dcdcdc">Seat Total: <s:property value="totalSeat" /> .</p>
                                    <p class="teaser" style="border-bottom:1px dotted #dcdcdc">Seat Available: <s:property value="seatAvailable" /> .</p>
                                    <p class="teaser" style="border-bottom:1px dotted #dcdcdc">Tour Depart: <s:property value="tourDepart" /> .</p>
                                    
                                    <p class="teaser"> <s:property value="Descriptions" /> </p>
                                    <center><a href="bookingstep1.jsp" title="Order Tour" class="gradient-button">BOOKING NOW</a></center>
                                </article>
                            </section>
                            <!--//General information-->

                            <!--Nightlife-->
                            <section style="display: none;" id="nightlife" class="tab-content">
                                <article>
                                    <h1>Policies</h1>
                                    <figure class="left_pic"><img src="images/uploads/<s:property value="img"/>" alt="Things to do"></figure>
                                    <p class="teaser"> </p>
                                    <p><b>Price includes:</b></p>
                                    <p>- VAT and service charge </p>
                                    <p>- Hotel accommodation with daily breakfast</p>
                                    <p>- Air-conditioned private (car or van or bus) for transfers and transportation</p>
                                    <p>- English-speaking guide </p>
                                    <p>- All meals as specified in each itinerary (B: Breakfast; L: Lunch; D: Dinner)</p>
                                    <p>- Sightseeing admission fees, boat fees as specified in the programme</p>
                                    <p><b>Price excludes:</b></p>
                                    <p>- Drinks, meals unspecified </p>
                                    <p>- Domestic and International airfares and airport taxes. </p>
                                    <p>- Travel insurance. </p>
                                    <p>- Personal expenses and other services not mentioned above.</p>
                                </article>
                            </section>
                            <!--//Nightlife-->
                        </s:iterator>





                    </section>
                    <!--//three-fourth content-->

                    <!--sidebar-->
                    <aside class="right-sidebar">

                        <!--Need Help Booking?-->
                        <article class="default clearfix">
                            <h2>Need Help Booking?</h2>
                            <p>Call our customer services team on the number below to speak to one of our advisors who will help you with all of your holiday needs.</p>
                            <p class="number">1- 555 - 555 - 555</p>
                        </article>
                        <!--//Need Help Booking?-->

                        <!--Why Book with us?-->
                        <article class="default clearfix">
                            <h2>Why Book with us?</h2>
                            <h3>Low rates</h3>
                            <p>Get the best rates, or get a refund.<br>No booking fees. Save money!</p>
                            <h3>Largest Selection</h3>
                            <p>140,000+ hotels worldwide<br>130+ airlines<br>Over 3 million guest reviews</p>
                            <h3>We’re Always Here</h3>
                            <p>Call or email us, anytime<br>Get 24-hour support before, during, and after your trip</p>
                        </article>
                        <!--//Why Book with us?-->

                

                        <!--Deal of the day-->
                        <article class="default clearfix" style="display: none">
                            <h2>Deal of the day</h2>
                            <div class="deal-of-the-day">
                                <a href="hotel.html">
                                    <figure><img src="images/uploads/img.jpg" alt="" height="130" width="230"></figure>
                                    <h3>Plaza Resort Hotel &amp; SPA
                                        <span class="stars">
                                            <img src="images/ico/star.png" alt="">
                                            <img src="images/ico/star.png" alt="">
                                            <img src="images/ico/star.png" alt="">
                                            <img src="images/ico/star.png" alt="">
                                        </span>
                                    </h3>
                                    <p>From <span class="price">$ 100 <small>/ per night</small></span></p>
                                    <span class="rating"> 8 /10</span>
                                </a>
                            </div>
                        </article>
                        <!--//Deal of the day-->
                    </aside>
                    <!--//sidebar-->
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
                            <input id="newsletter_signup" name="newsletter_signup" placeholder="Enter your email here" type="email">
                            <input id="newsletter_submit" name="newsletter_submit" value="Signup" class="gradient-button" type="submit">
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
