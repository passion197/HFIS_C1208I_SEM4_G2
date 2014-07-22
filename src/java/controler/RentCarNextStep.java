/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controler;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.CarBooking;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import model.Car;
import model.CarManagement;

/**
 *
 * @author Kha Chuong
 */
public class RentCarNextStep extends ActionSupport {
    public Car selectedCar;
    public String carID;
    public String fullName;
    public String phone;
    public String address;
    public String email;
    public String pickupIn;
    public String dropoffIn;
    public String pickupDate;
    public String pickupTime;
    public String dropoffDate;
    public String dropoffTime;
    public int age;
    public String haveLicense;
    public String haveDriver;
    public CarBooking currentCarBooking;
    @Override
    public  String execute() throws Exception{
        CarManagement mn = new CarManagement();
         selectedCar = mn.getCarByID(carID);
         currentCarBooking = new CarBooking();
         currentCarBooking.setCarID(Integer.parseInt(carID));
        // String userID =  ActionContext.getContext().getSession().get("userID").toString();
         currentCarBooking.setUserID(1);
         currentCarBooking.setPickupAt(mn.getOfficeAddressID(pickupIn));
         currentCarBooking.setDropoffAt(mn.getOfficeAddressID(dropoffIn));
         currentCarBooking.setFullName(fullName);
         currentCarBooking.setAddress(address);
         currentCarBooking.setPhone(phone);
         currentCarBooking.setEmail(email);
         DateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss" );
         Date date = new Date();
         currentCarBooking.setDateOrder(dateFormat.format(date));
       
         currentCarBooking.setPickupDate(pickupDate);
         currentCarBooking.setPickupTime(pickupTime);
         currentCarBooking.setDropoffDate(dropoffDate);
         currentCarBooking.setDropoffTime(dropoffTime);
         currentCarBooking.setHirerAge(age);
         currentCarBooking.setHaveLicense(haveLicense);
         if("Yes".equals(haveDriver)){
             currentCarBooking.setTotalAmount(selectedCar.getCostAvailableDriver());
         }else{
             currentCarBooking.setTotalAmount(selectedCar.getCostNotDriver());
         }
         currentCarBooking.setOrderStatus("Pending");
        ActionContext.getContext().getSession().put("currentCarBooking", currentCarBooking);
        mn.addNewCarOrder(currentCarBooking);
         return SUCCESS;
}
    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public String getPickupIn() {
        return pickupIn;
    }

    public void setPickupIn(String pickupIn) {
        this.pickupIn = pickupIn;
    }

    public String getDropoffIn() {
        return dropoffIn;
    }

    public void setDropoffIn(String dropoffIn) {
        this.dropoffIn = dropoffIn;
    }

    public String getPickupDate() {
        return pickupDate;
    }

    public void setPickupDate(String pickupDate) {
        this.pickupDate = pickupDate;
    }

    public String getPickupTime() {
        return pickupTime;
    }

    public void setPickupTime(String pickupTime) {
        this.pickupTime = pickupTime;
    }

    public String getDropoffDate() {
        return dropoffDate;
    }

    public void setDropoffDate(String dropoffDate) {
        this.dropoffDate = dropoffDate;
    }

    public String getDropoffTime() {
        return dropoffTime;
    }

    public void setDropoffTime(String dropoffTime) {
        this.dropoffTime = dropoffTime;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getHaveLicense() {
        return haveLicense;
    }

    public void setHaveLicense(String haveLicense) {
        this.haveLicense = haveLicense;
    }

    public String getHaveDriver() {
        return haveDriver;
    }

    public void setHaveDriver(String haveDriver) {
        this.haveDriver = haveDriver;
    }

    public CarBooking getCurrentCarBooking() {
        return currentCarBooking;
    }

    public void setCurrentCarBooking(CarBooking currentCarBooking) {
        this.currentCarBooking = currentCarBooking;
    }
    
    
    
}
