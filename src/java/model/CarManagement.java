/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import da.ConnectionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Khachuong
 */
public class CarManagement {
    public Car getCarByID(String carID){
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
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CarManagement.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
