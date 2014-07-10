/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Tour;
import model.UserInfo;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Doll
 */
public class BookingStep1 extends ActionSupport {

    private List<Tour> listTour = new ArrayList<Tour>();
    private String tourID;
    private List<UserInfo> listUserInfo= new ArrayList<UserInfo>();

    public List<UserInfo> getListUserInfo() {
        return listUserInfo;
    }

    public void setListUserInfo(List<UserInfo> listUserInfo) {
        this.listUserInfo = listUserInfo;
    }
    
    public String getTourID() {
        return tourID;
    }

    public void setTourID(String tourID) {
        this.tourID = tourID;
    }

    public List<Tour> getListTour() {
        return listTour;
    }

    public void setListTour(List<Tour> listTour) {
        this.listTour = listTour;
    }
    Connection con = da.ConnectionDB.getConnection();

    @Override
    public String execute() throws Exception {
        getTourbyID(tourID);
        String userID=ServletActionContext.getContext().getSession().get("userID").toString();
        getInfoUser(userID);
        return SUCCESS;
    }

    public void getTourbyID(String tourID) {
        try {
            String sql = "exec GetTourByID ?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, tourID);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setTourID(rs.getInt("TourID"));
                t.setTourName(rs.getString("TourName"));
                t.setCityID(rs.getInt("CityID"));
                t.setTourDepart(rs.getDate("TourDepart"));
                t.setTourArrive(rs.getDate("TourArrive"));
                t.setCostAdults(rs.getDouble("CostAdults"));
                t.setCostChild(rs.getDouble("CostChild"));
                t.setTotalSeat(rs.getInt("TotalSeat"));
                t.setSeatAvailable(rs.getInt("SeatAvailable"));
                t.setImg(rs.getString("images"));
                t.setDescriptions(rs.getString("Descriptions"));
                t.setDates(rs.getInt("Dates"));
                listTour.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookingStep1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void getInfoUser(String id){
        try {
            String sql="select*from Users where UserID=?";
            PreparedStatement pst= con.prepareStatement(sql);
            pst.setString(1, id);
            ResultSet rs= pst.executeQuery();
            while(rs.next()){
                UserInfo us= new UserInfo();
                us.setUserID(rs.getString("UserID"));
                us.setEmail(rs.getString("Email"));
                us.setAddress(rs.getString("Address"));
                us.setTel(rs.getString("Tel"));
                us.setLastName(rs.getString("LastName"));
                us.setFirstName(rs.getString("FirstName"));
                listUserInfo.add(us);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookingStep1.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}
