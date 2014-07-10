<%-- 
    Document   : morecar
    Created on : Jul 9, 2014, 9:42:20 AM
    Author     : Doll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if IE 7 ]>    <html class="ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8 oldie" lang="en"> <![endif]-->
<!--[if IE 	 ]>    <html class="ie" lang="en"> <![endif]-->
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="HandheldFriendly" content="True">
        <title>Book Your Travel</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen,projection,print" />
        <link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" />
        <link rel="shortcut icon" href="images/favicon.ico" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/css3-mediaqueries.js"></script>
        <script type="text/javascript" src="js/sequence.jquery-min.js"></script>
        <script type="text/javascript" src="js/jquery.uniform.min.js"></script>
        <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="js/sequence.js"></script>
        <script type="text/javascript" src="js/selectnav.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $(".form").hide();
                $(".form:first").show();
                $(".f-item:first").addClass("active");
                $(".f-item:first span").addClass("checked");
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

        <%@include file="slider.jsp" %>

        <%@include file="mainsearch.jsp" %>

        <!--main-->
        <div class="main" role="main">
            <div class="wrap clearfix">

                <!--top destinations-->
                <section class="destinations clearfix full">

                    <!--column-->
                    <h1>Toyota</h1>
                    <s:iterator value="listCar" var="lcar">
                        <article class="one-fourth" style="width: 23%;">
                            <figure><a href="cardetail?carID=<s:property value="carID"/>" title=""><img src="images/uploads/<s:property value="img"/>" alt="" width="270" height="152" /></a></figure>
                            <div class="details">
                                <a href="cardetail?carID=<s:property value="carID"/>" title="View more information..." class="gradient-button">MORE INFO</a>
                                <h5><s:property value="carName"/></h5>
                                <br/>
                                <p>Seat: <b><s:property value="Seat"/></b></p>
                                <p>Quantity Available: <b><s:property value="QuantityAvailable"/></b></p>
                                <div class="ribbon">
                                    <div class="half" style="margin-left: -25px">
                                        <a href="" title="Not Driver">
                                            <span><span class="small">Not Driver </span>
                                                <span class="price">&#36; <s:property value="CostNotDriver"/></span></span>
                                        </a>
                                    </div>
                                    <div class="half">
                                        <a href="" title="Available Driver">
                                            <span class="small">Driver</span>
                                            <span class="price">&#36; <s:property value="CostAvailableDriver"/></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                    
                    </article>
                    <!--//column-->

    </s:iterator>
                    <!--//top destinations-->

                </section>
                <!--info boxes-->
                <section class="boxes clearfix">
                    <!--column-->
                    <article class="one-fourth">
                        <h2>Handpicked Hotels</h2>
                        <p>All Book Your Travel Hotels fulfil strict selection criteria. Each hotel is chosen individually and inclusion cannot be bought. </p>
                    </article>
                    <!--//column-->

                    <!--column-->
                    <article class="one-fourth">
                        <h2>Detailed Descriptions</h2>
                        <p>To give you an accurate impression of the hotel, we endeavor to publish transparent, balanced and precise hotel descriptions. </p>
                    </article>
                    <!--//column-->

                    <!--column-->
                    <article class="one-fourth">
                        <h2>Exclusive Knowledge</h2>
                        <p>We’ve done our research. Our scouts are always busy finding out more about our hotels, the surroundings and activities on offer nearby.</p>
                    </article>
                    <!--//column-->

                    <!--column-->
                    <article class="one-fourth last">
                        <h2>Passionate Service</h2>
                        <p>Book Your Travels’s team will cater to your special requests. We offer expert and passionate advice for finding the right hotel. </p>
                    </article>
                    <!--//column-->

                    <!--column-->
                    <article class="one-fourth">
                        <h2>Best Price Guarantee</h2>
                        <p>We offer the best hotels at the best prices. If you find the same room category on the same dates cheaper elsewhere, we will refund the difference. Guaranteed, and quickly. </p>
                    </article>
                    <!--//column-->

                    <!--column-->
                    <article class="one-fourth">
                        <h2>Secure Booking</h2>
                        <p>Book Your Travel reservation system is secure and your credit card and personal information is encrypted.<br />We work to high standards and guarantee your privacy. </p>
                    </article>
                    <!--//column-->

                    <!--column-->
                    <article class="one-fourth">
                        <h2>Benefits for Hoteliers</h2>
                        <p>We provide a cost-effective model, a network of over 5000 partners and a personalised account management service to help you optimise your revenue.</p>
                    </article>
                    <!--//column-->

                    <!--column-->
                    <article class="one-fourth last">
                        <h2>Any Questions?</h2>
                        <p>Call us on <em>1-555-555-555</em> for individual, tailored advice for your perfect stay or <a href="contact.html" title="Contact">send us a message</a> with your hotel booking query.<br /><br /></p>
                    </article>
                    <!--//column-->
                </section>
                <!--//info boxes-->
            </div>
        </div>
        <!--//main-->

        <!--footer-->
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
                        <li class="pinterest"><a href="#" title="pinterest">pinterest</a></li>
                    </ul>
                </article>
                <!--//column-->

                <!--column-->
                <article class="one-fourth last">
                    <h3>Don’t miss our exclusive offers</h3>
                    <form id="newsletter" action="newsletter.php" method="post">
                        <fieldset>
                            <input type="email" id="newsletter_signup" name="newsletter_signup" placeholder="Enter your email here" />
                            <input type="submit" id="newsletter_submit" name="newsletter_submit" value="Signup" class="gradient-button" />
                        </fieldset>
                    </form>
                </article>
                <!--//column-->

                <section class="bottom">
                    <p class="copy">Copyright 2012 Book your travel ltd. All rights reserved</p>
                    <nav>
                        <ul>
                            <li><a href="#" title="About us">About us</a></li>
                            <li><a href="contact.html" title="Contact">Contact</a></li>
                            <li><a href="#" title="Partners">Partners</a></li>
                            <li><a href="#" title="Customer service">Customer service</a></li>
                            <li><a href="#" title="FAQ">FAQ</a></li>
                            <li><a href="#" title="Careers">Careers</a></li>
                            <li><a href="#" title="Terms & Conditions">Terms &amp; Conditions</a></li>
                            <li><a href="#" title="Privacy statement">Privacy statement</a></li>
                        </ul>
                    </nav>
                </section>
            </div>
        </footer>


        <!--//footer-->
        <script>
            // Initiate selectnav function
            selectnav();
        </script>
    </body>
</html>
