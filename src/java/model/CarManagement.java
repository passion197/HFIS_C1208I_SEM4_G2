/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import da.ConnectionDB;
import entity.CarBooking;
import entity.OfficeAddress;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Khachuong
 */
public class CarManagement {

    public Car getCarByID(String carID) {
        try {
            Connection con = da.ConnectionDB.getConnection();
            String sql = "select*from Car where CarID =?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, carID);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Car c = new Car();
                c.setCarID(rs.getString("CarID"));
                c.setModelID(rs.getString("ModelID"));
                c.setTotalQuantity(rs.getInt("TotalQuantity"));
                c.setQuantityAvailable(rs.getInt("QuantityAvailable"));
                c.setSeat(rs.getInt("Seat"));
                c.setAirConditioner(rs.getString("AirConditioner"));
                c.setCostAvailableDriver(rs.getDouble("CostAvailableDriver"));
                c.setCostNotDriver(rs.getDouble("CostNotDriver"));
                c.setImg(rs.getString("images"));
                c.setCarName(rs.getString("CarName"));
                c.setPaypal(rs.getString("Paypal"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CarManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void addNewCarOrder(CarBooking order) {
        try {
            Connection con = da.ConnectionDB.getConnection();
            String sql = "Insert into CarBooking values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement prst = con.prepareStatement(sql);

            prst.setInt(1, order.getCarID());
            prst.setInt(2, order.getUserID());
            prst.setInt(3, order.getPickupAt());
            prst.setInt(4, order.getDropoffAt());
            prst.setString(5, order.getDateOrder());
            prst.setString(6, order.getFullName());
            prst.setString(7, order.getEmail());
            prst.setString(8, order.getPhone());
            prst.setString(9, order.getAddress());
            prst.setString(10, order.getPickupDate());
            prst.setString(11, order.getPickupTime());
            prst.setString(12, order.getDropoffDate());
            prst.setString(13, order.getDropoffTime());
            prst.setInt(14, order.getHirerAge());
            prst.setString(15, order.getHaveLicense());
            prst.setDouble(16, order.getTotalAmount());
            prst.setString(17, order.getOrderStatus());
            prst.setString(18, order.getPaymentStatus());
            prst.setString(19, order.getDescription());
            prst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CarManagement.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<OfficeAddress> getAllOficeAddress() {
        try {
            List<OfficeAddress> listTemp = new LinkedList<OfficeAddress>();
            Connection con = da.ConnectionDB.getConnection();
            String sql = "Select * From OfficeAddress";
            PreparedStatement prst = con.prepareStatement(sql);
            ResultSet rs = prst.executeQuery();
            while (rs.next()) {
                OfficeAddress office = new OfficeAddress();
                office.setOfficeAddressID(rs.getInt("OfficeAddressID"));
                office.setOfficeAddress(rs.getString("OfficeAddress"));
                office.setOfficePhone(rs.getString("OfficePhone"));
                office.setOfficeMail(rs.getString("OfficeMail"));
                listTemp.add(office);
            }
            return listTemp;
        } catch (SQLException ex) {
            Logger.getLogger(CarManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int getOfficeAddressID(String address) {
        try {
            Connection con = da.ConnectionDB.getConnection();
            String sql = "Select * From OfficeAddress Where OfficeAddress = ?";
            PreparedStatement prst = con.prepareStatement(sql);
            prst.setString(1, address);

            ResultSet rs = prst.executeQuery();
            while (rs.next()) {
                return rs.getInt("OfficeAddressID");
            }
        } catch (SQLException ex) {
            Logger.getLogger(CarManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 1;
    }

    public boolean checkBookable(String pickupDate, String carID, int carAvailable, int totalCars) {
        System.out.println("Pick up date " + pickupDate);
        if (carAvailable > 0) {
            return true;
        } else {
            try {
                int counter = 0;
                Connection con = da.ConnectionDB.getConnection();
                String sql = "Select * From CarBooking Where CarID = ?";
                PreparedStatement prst = con.prepareStatement(sql);
                prst.setString(1, carID);
                ResultSet rs = prst.executeQuery();
                while (rs.next()) {

                    if (pickupDate.compareTo(rs.getString("DropoffDate")) > 0 && rs.getString("OrderStatus").equalsIgnoreCase("waiting") && rs.getString("PaymentStatus").equalsIgnoreCase("pending")) {
                        counter++;

                    }
                }
                if (counter >= totalCars) {
                    return false;
                } else {
                    String sql2 = "Select * From CarBooking Where CarID = ?";
                    PreparedStatement prst2 = con.prepareStatement(sql2);
                    prst2.setString(1, carID);
                    ResultSet rs2 = prst2.executeQuery();
                    while (rs2.next()) {
                        if (rs2.getString("DropoffDate").compareTo(pickupDate) > 0 && rs.getString("PaymentStatus").equalsIgnoreCase("pending")) {

                            return false;
                        }
                    }
                    return true;
                }

            } catch (SQLException ex) {
                Logger.getLogger(CarManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }
}
