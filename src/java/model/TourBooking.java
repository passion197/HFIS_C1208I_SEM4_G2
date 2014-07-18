/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Date;

/**
 *
 * @author Doll
 */
public class TourBooking {
    private int tourBookingID;
    private int tourID;
    private int userID;
    private int amountAdults;
    private int amountChild;
    private double totalCost;
    private String firstName;
    private String lastName;
    private String tel;
    private String address;
    private String email;
    private String status;
    private String dateorder;

    public String getDateorder() {
        return dateorder;
    }

    public void setDateorder(String dateorder) {
        this.dateorder = dateorder;
    }

   
    

    public int getTourBookingID() {
        return tourBookingID;
    }

    public void setTourBookingID(int tourBookingID) {
        this.tourBookingID = tourBookingID;
    }

    public int getTourID() {
        return tourID;
    }

    public void setTourID(int tourID) {
        this.tourID = tourID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getAmountAdults() {
        return amountAdults;
    }

    public void setAmountAdults(int amountAdults) {
        this.amountAdults = amountAdults;
    }

    public int getAmountChild() {
        return amountChild;
    }

    public void setAmountChild(int amountChild) {
        this.amountChild = amountChild;
    }

    public double getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
