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
public class Tour {
    private int tourID;
    private String tourName;
    private int cityID;
    private Date tourDepart;
    private Date tourArrive;
    private Date Outtour;
    private double costAdults;
    private double costChild;
    private int totalSeat;
    private int seatAvailable;
    private String img;
    private String Descriptions;
    private int Dates;

    public int getTourID() {
        return tourID;
    }


    public String getTourName() {
        return tourName;
    }

    public void setTourName(String tourName) {
        this.tourName = tourName;
    }



    public Date getTourDepart() {
        return tourDepart;
    }

    public void setTourDepart(Date tourDepart) {
        this.tourDepart = tourDepart;
    }

    public Date getTourArrive() {
        return tourArrive;
    }

    public void setTourArrive(Date tourArrive) {
        this.tourArrive = tourArrive;
    }

    public Date getOuttour() {
        return Outtour;
    }

    public void setOuttour(Date Outtour) {
        this.Outtour = Outtour;
    }

    public double getCostAdults() {
        return costAdults;
    }

    public void setCostAdults(double costAdults) {
        this.costAdults = costAdults;
    }

    public double getCostChild() {
        return costChild;
    }

    public void setCostChild(double costChild) {
        this.costChild = costChild;
    }

    public int getTotalSeat() {
        return totalSeat;
    }

    public void setTotalSeat(int totalSeat) {
        this.totalSeat = totalSeat;
    }

    public int getSeatAvailable() {
        return seatAvailable;
    }

    public void setSeatAvailable(int seatAvailable) {
        this.seatAvailable = seatAvailable;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescriptions() {
        return Descriptions;
    }

    public void setDescriptions(String Descriptions) {
        this.Descriptions = Descriptions;
    }

    public int getDates() {
        return Dates;
    }

    public int getCityID() {
        return cityID;
    }

    public void setTourID(int tourID) {
        this.tourID = tourID;
    }

    public void setCityID(int cityID) {
        this.cityID = cityID;
    }

    public void setDates(int Dates) {
        this.Dates = Dates;
    }
    
    
}
