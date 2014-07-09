<%-- 
    Document   : mainsearch
    Created on : Jul 8, 2014, 5:24:58 PM
    Author     : Doll
--%>

 <!--search-->
        <div class="main-search">
            <form id="main-search" method="post" action="search_results.html">
                <!--column-->
                <div class="column radios">
                    <h4><span>01</span> What?</h4>
                    <div class="f-item" >
                        <input type="radio" name="radio" id="hotel" value="form1" />
                        <label for="hotel">Hotel</label>
                    </div>
                    <div class="f-item">
                        <input type="radio" name="radio" id="self_catering" value="form2" />
                        <label for="self_catering">Self Catering</label>
                    </div>
                    <div class="f-item">
                        <input type="radio" name="radio" id="flight" value="form3" />
                        <label for="flight">Flight</label>
                    </div>
                    <div class="f-item" >
                        <input type="radio" name="radio" id="cruise" value="form4" />
                        <label for="cruise">Cruise</label>
                    </div>
                    <div class="f-item" >
                        <input type="radio" name="radio" id="flight_and_hotel" value="form5" />
                        <label for="flight_and_hotel">Flight &amp; Hotel</label>	
                    </div>
                    <div class="f-item">
                        <input type="radio" name="radio" id="rent_a_car" value="form6" />
                        <label for="rent_a_car">Rent a Car</label>
                    </div>
                </div>
                <!--//column-->

                <div class="forms">
                    <!--form hotel-->
                    <div class="form" id="form1">
                        <!--column-->
                        <div class="column">
                            <h4><span>02</span> Where?</h4>
                            <div class="f-item">
                                <label for="destination1">Your destination</label>
                                <input type="text" placeholder="City, region, district or specific hotel" id="destination1" name="destination" />
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column twins">
                            <h4><span>03</span> When?</h4>
                            <div class="f-item datepicker">
                                <label for="datepicker1">Check-in date</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker1" name="datepicker1" /></div>
                            </div>
                            <div class="f-item datepicker">
                                <label for="datepicker2">Check-out date</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker2" name="datepicker2" /></div>
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column triplets">
                            <h4><span>04</span> Who?</h4>
                            <div class="f-item spinner">
                                <label for="spinner1">Rooms</label>
                                <input type="text" placeholder="" id="spinner1" name="spinner1" />
                            </div>
                            <div class="f-item spinner">
                                <label for="spinner2">Adults</label>
                                <input type="text" placeholder="" id="spinner2" name="spinner1" />
                            </div>
                            <div class="f-item spinner">
                                <label for="spinner3">Children</label>
                                <input type="text" placeholder="" id="spinner3" name="spinner1" />
                            </div>
                        </div>
                        <!--//column-->
                    </div>	
                    <!--//form hotel-->

                    <!--form self catering-->
                    <div class="form" id="form2">
                        <!--column-->
                        <div class="column">
                            <h4><span>02</span> Where?</h4>
                            <div class="f-item">
                                <label for="destination2">Your destination</label>
                                <input type="text" placeholder="City, region, district or specific hotel" id="destination2" name="destination" />
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column twins">
                            <h4><span>03</span> When?</h4>
                            <div class="f-item datepicker">
                                <label for="datepicker1">Check-in date</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker4" name="datepicker4" /></div>
                            </div>
                            <div class="f-item datepicker">
                                <label for="datepicker2">Check-out date</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker5" name="datepicker5" /></div>
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column twins last">
                            <h4><span>04</span> Who?</h4>
                            <div class="f-item spinner">
                                <label for="spinner1">Guests</label>
                                <input type="text" placeholder="" id="spinner4" name="spinner4" />
                            </div>
                            <div class="f-item spinner">
                                <label for="spinner2">Bedrooms</label>
                                <input type="text" placeholder="" id="spinner5" name="spinner5" />
                            </div>
                        </div>
                        <!--//column-->
                    </div>	
                    <!--//form self catering-->

                    <!--form flight-->
                    <div class="form" id="form3">
                        <!--column-->
                        <div class="column">
                            <h4><span>02</span> Where?</h4>
                            <div class="f-item">
                                <label for="destination3">Leaving from</label>
                                <input type="text" placeholder="City, region, district or specific airport" id="destination3" name="destination" />
                            </div>
                            <div class="f-item">
                                <label for="destination4">Going to</label>
                                <input type="text" placeholder="City, region, district or specific airport" id="destination4" name="destination" />
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column two-childs">
                            <h4><span>03</span> When?</h4>
                            <div class="f-item datepicker">
                                <label for="datepicker6">Departing on</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker6" name="datepicker6" /></div>
                                <select>
                                    <option>Select time</option>
                                    <option>Lowest fare</option>
                                    <option>Morning</option>
                                    <option>Midday</option>
                                    <option>Afternoon</option>
                                    <option>Evening</option>
                                </select>
                            </div>
                            <div class="f-item datepicker">
                                <label for="datepicker7">Arriving on</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker7" name="datepicker7" /></div>
                                <select>
                                    <option>Select time</option>
                                    <option>Lowest fare</option>
                                    <option>Morning</option>
                                    <option>Midday</option>
                                    <option>Afternoon</option>
                                    <option>Evening</option>
                                </select>
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column triplets">
                            <h4><span>04</span> Who?</h4>
                            <div class="f-item spinner">
                                <label for="spinner6">Adults</label>
                                <input type="text" placeholder="" id="spinner6" name="spinner6" />
                            </div>
                            <div class="f-item spinner">
                                <label for="spinner7">Children</label>
                                <input type="text" placeholder="" id="spinner7" name="spinner7" />
                            </div>
                            <div class="f-item spinner">
                                <label for="spinner8">Infants</label>
                                <input type="text" placeholder="" id="spinner8" name="spinner8" />
                            </div>
                        </div>
                        <!--//column-->
                    </div>	
                    <!--//form flight-->

                    <!--form cruise-->
                    <div class="form" id="form4">
                        <!--column-->
                        <div class="column">
                            <h4><span>02</span> Where?</h4>
                            <div class="f-item">
                                <label>Your destination</label>
                                <select>
                                    <option>I Don't Mind</option>
                                    <option>Africa</option>
                                    <option>Alaska</option>
                                    <option>Alaska - Gulf Northbound</option>
                                    <option>Alaska - Gulf Southbound</option>
                                    <option>Antarctica</option>
                                    <option>Arctic</option>
                                    <option>Australia</option>
                                    <option>Bahamas</option>
                                    <option>Bermuda</option>
                                    <option>Brazil</option>
                                    <option>Canada/New England</option>
                                    <option>Canada</option>
                                    <option>Caribbean</option>
                                    <option>Caribbean - Eastern</option>
                                    <option>Caribbean - Southern</option>
                                    <option>Caribbean - Western</option>
                                    <option>Coastal</option>
                                    <option>Costa Rica</option>
                                    <option>Cruise To Nowhere</option>
                                    <option>Europe</option>
                                    <option>Northern Europe</option>
                                    <option>Europe - Western</option>
                                    <option>Europe (Greenland)</option>
                                    <option>Europe (Norway)</option>
                                    <option>Far East</option>
                                    <option>Greece</option>
                                    <option>Hawaii</option>
                                    <option>India</option>
                                    <option>Mediterranean</option>
                                    <option>Mediterranean - Eastern</option>
                                    <option>Mexico</option>
                                    <option>Middle East</option>
                                    <option>New England</option>
                                    <option>New Zealand</option>
                                    <option>Pacific Coastal</option>
                                    <option>Pacific Northwest</option>
                                    <option>Panama Canal</option>
                                    <option>Russia</option>
                                    <option>South America</option>
                                    <option>South Pacific</option>
                                    <option>Southeast Asia</option>
                                    <option>Tahiti</option>
                                    <option>Transatlantic</option>
                                    <option>Transcanal</option>
                                    <option>Transpacific</option>
                                    <option>World Cruise</option>
                                </select>
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column twins">
                            <h4><span>03</span> When?</h4>
                            <div class="f-item datepicker">
                                <label for="datepicker8">Departure date</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker8" name="datepicker8" /></div>
                            </div>
                            <div class="f-item">
                                <label>Cruise length</label>
                                <select>
                                    <option>I Don't Mind</option>
                                    <option>1-2 Nights</option>
                                    <option>3-6 Nights</option>
                                    <option>7-9 Nights</option>
                                    <option>10-14 Nights</option>
                                    <option>Over 14 Nights</option>
                                </select>
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column twins last">
                            <h4><span>04</span> Who?</h4>
                            <div class="f-item">
                                <label>Cruise Line</label>
                                <select>
                                    <option>I Don't Mind</option>
                                    <option>Azamara Club Cruises</option>
                                    <option>Carnival Cruise Lines</option>
                                    <option>Celebrity Cruises</option>
                                    <option>Costa Cruise Lines</option>
                                    <option>Cruise &amp; Maritime Voyages</option>
                                    <option>Crystal Cruises</option>
                                    <option>Cunard Line Ltd.</option>
                                    <option>Disney Cruise Line</option>
                                    <option>Holland America Line</option>
                                    <option>Hurtigruten Cruise Line</option>
                                    <option>MSC Cruises</option>
                                    <option>Norwegian Cruise Line</option>
                                    <option>Oceania Cruises</option>
                                    <option>Orion Expedition Cruises</option>
                                    <option>P&amp;O Cruises</option>
                                    <option>Paul Gauguin Cruises</option>
                                    <option>Peter Deilmann Cruises</option>
                                    <option>Princess Cruises</option>
                                    <option>Regent Seven Seas Cruises</option>
                                    <option>Royal Caribbean International</option>
                                    <option>Seabourn Cruise Line</option>
                                    <option>Silversea Cruises</option>
                                    <option>Star Clippers</option>
                                    <option>Swan Hellenic Cruises</option>
                                    <option>Thomson Cruises</option>
                                    <option>Viking River Cruises</option>
                                    <option>Windstar Cruises</option>
                                </select>
                            </div>

                            <div class="f-item spinner">
                                <label for="spinner9">Cabins</label>
                                <input type="text" placeholder="" id="spinner9" name="spinner9" />
                            </div>

                        </div>
                        <!--//column-->
                    </div>	
                    <!--//form cruise-->

                    <!--form flight+hotel-->
                    <div class="form" id="form5">
                        <!--column-->
                        <div class="column">
                            <h4><span>02</span> Where?</h4>
                            <div class="f-item">
                                <label for="destination5">Leaving from</label>
                                <input type="text" placeholder="City, region, district or specific airport" id="destination5" name="destination" />
                            </div>
                            <div class="f-item">
                                <label for="destination6">Going to</label>
                                <input type="text" placeholder="City, region, district or specific airport" id="destination6" name="destination" />
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column two-childs">
                            <h4><span>03</span> When?</h4>
                            <div class="f-item datepicker">
                                <label for="datepicker9">Departing on</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker9" name="datepicker9" /></div>
                                <select>
                                    <option>Select time</option>
                                    <option>Lowest fare</option>
                                    <option>Morning</option>
                                    <option>Midday</option>
                                    <option>Afternoon</option>
                                    <option>Evening</option>
                                </select>
                            </div>
                            <div class="f-item datepicker">
                                <label for="datepicker10">Arriving on</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker10" name="datepicker10" /></div>
                                <select>
                                    <option>Select time</option>
                                    <option>Lowest fare</option>
                                    <option>Morning</option>
                                    <option>Midday</option>
                                    <option>Afternoon</option>
                                    <option>Evening</option>
                                </select>
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column triplets">
                            <h4><span>04</span> Who?</h4>
                            <div class="f-item spinner">
                                <label for="spinner10">Adults</label>
                                <input type="text" placeholder="" id="spinner10" name="spinner10" />
                            </div>
                            <div class="f-item spinner">
                                <label for="spinner11">Children</label>
                                <input type="text" placeholder="" id="spinner11" name="spinner11" />
                            </div>
                            <div class="f-item spinner">
                                <label for="spinner12">Rooms</label>
                                <input type="text" placeholder="" id="spinner12" name="spinner12" />
                            </div>
                        </div>
                        <!--//column-->
                    </div>	
                    <!--//form flight+hotel-->

                    <!--form rent a car-->
                    <div class="form" id="form6">
                        <!--column-->
                        <div class="column">
                            <h4><span>02</span> Where?</h4>
                            <div class="f-item">
                                <label for="destination7">Pick Up</label>
                                <input type="text" placeholder="I want to pick up car in" id="destination7" name="destination" />
                            </div>
                            <div class="f-item">
                                <label for="destination8">Drop Off</label>
                                <input type="text" placeholder="I want to pick drop off car in" id="destination8" name="destination" />
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column two-childs">
                            <h4><span>03</span> When?</h4>
                            <div class="f-item datepicker">
                                <label for="datepicker11">Pick up time</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker11" name="datepicker11" /></div>
                                <select>
                                    <option>00:00</option>
                                    <option>01:00</option>
                                    <option>02:00</option>
                                    <option>03:00</option>
                                    <option>04:00</option>
                                    <option>05:00</option>
                                    <option>06:00</option>
                                    <option>07:00</option>
                                    <option>08:00</option>
                                    <option>09:00</option>
                                    <option selected="selected">10:00</option>
                                    <option>11:00</option>
                                    <option>12:00</option>
                                    <option>13:00</option>
                                    <option>14:00</option>
                                    <option>15:00</option>
                                    <option>16:00</option>
                                    <option>17:00</option>
                                    <option>18:00</option>
                                    <option>19:00</option>
                                    <option>20:00</option>
                                    <option>21:00</option>
                                    <option>22:00</option>
                                    <option>23:00</option>
                                </select>
                            </div>
                            <div class="f-item datepicker">
                                <label for="datepicker12">Drop of time</label>
                                <div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker12" name="datepicker12" /></div>
                                <select>
                                    <option>00:00</option>
                                    <option>01:00</option>
                                    <option>02:00</option>
                                    <option>03:00</option>
                                    <option>04:00</option>
                                    <option>05:00</option>
                                    <option>06:00</option>
                                    <option>07:00</option>
                                    <option>08:00</option>
                                    <option>09:00</option>
                                    <option selected="selected">10:00</option>
                                    <option>11:00</option>
                                    <option>12:00</option>
                                    <option>13:00</option>
                                    <option>14:00</option>
                                    <option>15:00</option>
                                    <option>16:00</option>
                                    <option>17:00</option>
                                    <option>18:00</option>
                                    <option>19:00</option>
                                    <option>20:00</option>
                                    <option>21:00</option>
                                    <option>22:00</option>
                                    <option>23:00</option>
                                </select>
                            </div>
                        </div>
                        <!--//column-->

                        <!--column-->
                        <div class="column twins">
                            <h4><span>04</span> Who?</h4>
                            <div class="f-item spinner small">
                                <label for="spinner13">Driver Age</label>
                                <input type="text" placeholder="" id="spinner13" name="spinner13" />
                            </div>
                            <div class="f-item">
                                <label for="spinner2">Car type:</label>
                                <select>
                                    <option>No Preference</option>
                                    <option>Economy</option>
                                    <option>Compact</option>
                                    <option>Midsize</option>
                                    <option>Standard</option>
                                    <option>Full Size</option>
                                    <option>Premium</option>
                                    <option>Luxury</option>
                                    <option>Convertible</option>
                                    <option>Minivan</option>
                                    <option>Sports Car</option>
                                </select>
                            </div>
                        </div>
                        <!--//column-->
                    </div>	
                    <!--//form rent a car-->
                </div>
                <input type="submit" value="Proceed to results" class="search-submit" id="search-submit" />
            </form>
        </div>
        <!--//search-->
