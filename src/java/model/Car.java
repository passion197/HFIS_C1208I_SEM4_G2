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
public class Car {
    private String carID;
    private String modelID;
    private int totalQuantity;
    private int QuantityAvailable;
    private int Seat;
    private String AirConditioner;
    private double CostNotDriver;
    private double CostAvailableDriver;
    private String img;
    private String carName;
    private String paypal;

    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public String getModelID() {
        return modelID;
    }

    public void setModelID(String modelID) {
        this.modelID = modelID;
    }

    public int getTotalQuantity() {
        return totalQuantity;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    public int getQuantityAvailable() {
        return QuantityAvailable;
    }

    public void setQuantityAvailable(int QuantityAvailable) {
        this.QuantityAvailable = QuantityAvailable;
    }

    public int getSeat() {
        return Seat;
    }

    public void setSeat(int Seat) {
        this.Seat = Seat;
    }

    public String getAirConditioner() {
        return AirConditioner;
    }

    public void setAirConditioner(String AirConditioner) {
        this.AirConditioner = AirConditioner;
    }

    public double getCostNotDriver() {
        return CostNotDriver;
    }

    public void setCostNotDriver(double CostNotDriver) {
        this.CostNotDriver = CostNotDriver;
    }

    public double getCostAvailableDriver() {
        return CostAvailableDriver;
    }

    public void setCostAvailableDriver(double CostAvailableDriver) {
        this.CostAvailableDriver = CostAvailableDriver;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getPaypal() {
        return paypal;
    }

    public void setPaypal(String paypal) {
        this.paypal = paypal;
    }
    
    
}
