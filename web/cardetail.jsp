<%-- 
    Document   : cardetail
    Created on : Jul 9, 2014, 10:34:41 AM
    Author     : Doll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head><style type="text/css">.gm-style .gm-style-mtc label,.gm-style .gm-style-mtc div{font-weight:400}</style><style type="text/css">.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px}</style><link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"><style type="text/css">@media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}@media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}</style><style type="text/css">.gm-style{font-family:Roboto,Arial,sans-serif;font-size:11px;font-weight:400;text-decoration:none}</style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="HandheldFriendly" content="True">
        <title>Book Your Travel - Car information</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen,projection,print">
        <link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen">
        <link rel="shortcut icon" href="images/favicon.ico">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/css3-mediaqueries.js"></script>
        <script type="text/javascript" src="js/infobox.js"></script>
        <script type="text/javascript" src="js/jquery.uniform.min.js"></script>
        <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="js/selectnav.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>

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
                            <li><a href="East2West" title="Home">Home</a></li>
                            <li>Car Detail</li>                                       
                        </ul>
                        <!--//crumbs-->
                    </nav>
                    <!--//breadcrumbs-->
                    <s:iterator value="listCar" var="lc">
                        <!--hotel three-fourth content-->
                        <section class="three-fourth">
                            <!--gallery-->
                            <section class="gallery" id="crossfade">
                                <img src="images/uploads/<s:property value="img" />" alt="" width="850" height="531">
                                <img src="images/uploads/<s:property value="img" />" alt="" width="850" height="531">
                                <img src="images/uploads/<s:property value="img" />" alt="" width="850" height="531">
                            </section>
                            <!--//gallery-->

                            <!--inner navigation-->
                            <nav class="inner-nav">
                                <ul>
                                    <li class="description active"><a href="#description" title="Description">Description</a></li>
                                    <li class="facilities"><a href="#location" title="Location">General Policies</a></li>
                                </ul>
                            </nav>
                            <!--//inner navigation-->
                            <!--description-->
                            <section id="description" class="tab-content" style="display: block;">
                                <article>
                                    <h1>General</h1>
                                    <div class="text-wrap">	
                                        <p>Car hire is the BEST way to see our beautiful country and explore city after city. You can book a rental car from almost any location in the country meaning you can start your holiday wherever you choose. Whether it's Auckland, Wellington, Christchurch, or Rotorua, you can even book to start your journey right out of the Airport.</p>
                                    </div>
                                    <h1>Seat</h1>
                                    <div class="text-wrap">	
                                        <p><s:property value="Seat" /> </p>
                                    </div>
                                    <h1>Air Conditioner</h1>
                                    <s:set name="airvar" value="AirConditioner"/>
                                    <div class="text-wrap">	
                                        <s:if test="%{#airvar=='1'}">
                                            <p>Yes</p>
                                        </s:if>
                                        <s:else>
                                            <p>No</p>
                                        </s:else>
                                    </div>
                                    <h1>Cost</h1>
                                    <div class="text-wrap">	
                                        <p>Not Driver: <span style="font-size: 14px;font-weight: bold"><s:property value="CostNotDriver" /> $</span></p>
                                        <p>Available Driver: <span style="font-size: 14px;font-weight: bold"><s:property value="CostAvailableDriver" /> $</span></p>
                                    </div>
                                    <h1>Quantity Available</h1>
                                    <div class="text-wrap">	
                                        <p><s:property value="QuantityAvailable" /> Car</p>
                                    </div>
                                    <h1>Pets</h1>
                                    <div class="text-wrap">	
                                        <p>Pets are allowed. Charges may be applicable.</p>
                                    </div>
                                    <h1>Accepted credit cards</h1>
                                    <div class="text-wrap">	
                                        <p>American Express, Visa, Euro/Mastercard, Diners Club<br></p>
                                    </div>
                                    <center><a href="rentCar?&carID=<s:property value="carID"/>" title="Order Tour" class="gradient-button">BOOKING NOW</a></center>
                                </article>
                            </section>
                            <!--//description-->
                            <!--description-->
                            <section id="location" class="tab-content" style="display: none;">
                                <article>
                                    <h1>General Policies</h1>
                                    <div class="text-wrap">	
                                        <p><b>A. Rental Rates: Daily Rental rates are based on a 24 hour "rental day" starting at the time of rental. The minimum charge is one day, plus mileage, if applicable.</b>The renter will be charged for each hour and/or any part of an hour in excess of a rental day the renter keeps the vehicle, until the vehicle is returned, up to the applicable daily rate. Mileage charges, if applicable, will be the number of miles driven as determined by the odometer readings at the beginning and end of the rental. A Return Change Fee of $25 will apply if you return 24 hours or more prior to your reserved return date and time. If you return 24 hours or more after your scheduled return date and time, a Return Change Fee of $15.99 per day will apply ($79.95 max.), in addition to any other rental charges. If the renter fails to comply with the conditions applicable to the rate, including any geographic driving restrictions, a mileage charge, surcharge or other rates may apply.</p>
                                        <p><b>B. Driving Age: </b> The minimum age to rent a vehicle at most THRIFTY locations in the United States and Canada is 21 years of age. Please refer to the Terms and Conditions for specific information on driver ages at the location where you intend to rent and the applicable charge for drivers 21 to 24 years of age.</p>
                                        <p><b>C. Authorized Drivers: </b>The THRIFTY vehicle may be driven only by an authorized driver. An authorized driver is the renter and any additional person who appears at the time of rental, and signs the rental agreement. All authorized drivers must satisfy our age requirements, have a valid driver's license, provide a physical street resident address </p>
                                        <p><b>D. Additional Authorized Drivers and Fees: </b>All additional authorized drivers are required to qualify to drive the vehicle. To qualify, THRIFTY requires all additional drivers, including spouses, to satisfy our minimum age requirements, have a valid driver’s license, and pay an additional driver fee. However, the following additional drivers do not need to pay an additional driver fee as long as they meet our minimum age requirements and have a valid drivers license: </p>
                                        <p>(1) government renters on official orders,</p>
                                        <p>(2) corporate account customers on corporate rate plans, and</p>
                                        <p><b>E. Disabled Renters: </b></p>
                                        <p><b>1. Available Driving Aids: </b>If the renter will require driving aids to operate a vehicle, please contact us at 1-800-847-4389. This will ensure availability of equipment and allow THRIFTY personnel to install such equipment prior to the rental.</p>
                                        <p><b>2. Pick-up: </b>We would also ask that you call 1-800-847-4389 prior to your arrival so that we may pick you and your traveling companion up, if any, upon arrival at the airport. At most locations, courtesy telephones are also available to contact us for pick-up.</p>
                                        <p><b>3. Additional Authorized Drivers: </b>If a traveling companion shall serve as the driver during the rental, please advise the THRIFTY representative at the time of rental and pick-up. There is no additional charge for an additional authorized driver for non-driving disabled renters.</p>
                                    </div>

                                </article>
                            </section>
                            <!--//description-->

                        </section>
                        <!--//hotel content-->
                    </s:iterator>
                    <!--sidebar-->

                    <aside class="right-sidebar">
                        <!--hotel details-->
                        <s:iterator value="listCar">
                            <article class="default clearfix">
                                <h2><s:property value="carName" /></h2>
                            </article>
                        </s:iterator>
                        <!--//hotel details-->
                        <!--testimonials-->
                        <article class="testimonials clearfix">
                            <blockquote>Loved the staff and the location was just amazing... Perfect!” </blockquote>
                            <span class="name">- Jane Doe, Solo Traveller</span>
                        </article>
                        <!--//testimonials-->

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
