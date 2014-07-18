/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author Doll
 */
public class TravelerInfo {
    private int travelerTourID;
    private int tourBookingID;
    private int userOrder;
    private String travelerName;
    private String travelerGender;
    private String travelerType;
    private String travelerPassport;

    public int getTravelerTourID() {
        return travelerTourID;
    }

    public void setTravelerTourID(int travelerTourID) {
        this.travelerTourID = travelerTourID;
    }

    public int getTourBookingID() {
        return tourBookingID;
    }

    public void setTourBookingID(int tourBookingID) {
        this.tourBookingID = tourBookingID;
    }

    public int getUserOrder() {
        return userOrder;
    }

    public void setUserOrder(int userOrder) {
        this.userOrder = userOrder;
    }

    public String getTravelerName() {
        return travelerName;
    }

    public void setTravelerName(String travelerName) {
        this.travelerName = travelerName;
    }

    public String getTravelerGender() {
        return travelerGender;
    }

    public void setTravelerGender(String travelerGender) {
        this.travelerGender = travelerGender;
    }

    public String getTravelerType() {
        return travelerType;
    }

    public void setTravelerType(String travelerType) {
        this.travelerType = travelerType;
    }

    public String getTravelerPassport() {
        return travelerPassport;
    }

    public void setTravelerPassport(String travelerPassport) {
        this.travelerPassport = travelerPassport;
    }
    
}
