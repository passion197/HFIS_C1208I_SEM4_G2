/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entity;

/**
 *
 * @author Kha Chuong
 */
public class CarBooking {
    private int OrderID;
    private int CarID;
    private int UserID;
    private int PickupAt;
    private int DropoffAt;
    private String FullName;
    private String Phone;
    private String Email;
    private String Address;
    private String DateOrder;
    private String PickupDate;
    private String PickupTime;
    private String DropoffDate;
    private String DropoffTime;
    private int HirerAge;
    private String HaveLicense;
    private double TotalAmount;
    private String OrderStatus;
    private String PaymentStatus;
    private String Description;

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getCarID() {
        return CarID;
    }

    public void setCarID(int CarID) {
        this.CarID = CarID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public int getPickupAt() {
        return PickupAt;
    }

    public void setPickupAt(int PickupAt) {
        this.PickupAt = PickupAt;
    }

    public int getDropoffAt() {
        return DropoffAt;
    }

    public void setDropoffAt(int DropoffAt) {
        this.DropoffAt = DropoffAt;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    

    public String getDateOrder() {
        return DateOrder;
    }

    public void setDateOrder(String DateOrder) {
        this.DateOrder = DateOrder;
    }

    public String getPickupDate() {
        return PickupDate;
    }

    public void setPickupDate(String PickupDate) {
        this.PickupDate = PickupDate;
    }

    public String getPickupTime() {
        return PickupTime;
    }

    public void setPickupTime(String PickupTime) {
        this.PickupTime = PickupTime;
    }

    public String getDropoffDate() {
        return DropoffDate;
    }

    public void setDropoffDate(String DropoffDate) {
        this.DropoffDate = DropoffDate;
    }

    public String getDropoffTime() {
        return DropoffTime;
    }

    public void setDropoffTime(String DropoffTime) {
        this.DropoffTime = DropoffTime;
    }

    public int getHirerAge() {
        return HirerAge;
    }

    public void setHirerAge(int HirerAge) {
        this.HirerAge = HirerAge;
    }

    public String getHaveLicense() {
        return HaveLicense;
    }

    public void setHaveLicense(String HaveLicense) {
        this.HaveLicense = HaveLicense;
    }
    public double getTotalAmount() {
        return TotalAmount;
    }

    public void setTotalAmount(double TotalAmount) {
        this.TotalAmount = TotalAmount;
    }

    public String getOrderStatus() {
        return OrderStatus;
    }

    public void setOrderStatus(String OrderStatus) {
        this.OrderStatus = OrderStatus;
    }

    public String getPaymentStatus() {
        return PaymentStatus;
    }

    public void setPaymentStatus(String PaymentStatus) {
        this.PaymentStatus = PaymentStatus;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }
    
}
