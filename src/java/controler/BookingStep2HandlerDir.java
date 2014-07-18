/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.TourBooking;
import model.TravelerInfo;

/**
 *
 * @author Doll
 */
public class BookingStep2HandlerDir extends ActionSupport {

    private List<TourBooking> listTourBooking = new ArrayList<TourBooking>();
    private List<TravelerInfo> listTravelerInfo = new ArrayList<TravelerInfo>();
    Connection con = da.ConnectionDB.getConnection();

    @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        listTravelerInfo = (List<TravelerInfo>) session.get("listInfoss");
        listTourBooking = (List<TourBooking>) session.get("listTourBookss");
        String sql = "insert into TourBooking values(?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, listTourBooking.get(0).getTourID());
        pst.setInt(2, listTourBooking.get(0).getUserID());
        pst.setInt(3, listTourBooking.get(0).getAmountAdults());
        pst.setInt(4, listTourBooking.get(0).getAmountChild());
        pst.setDouble(5, listTourBooking.get(0).getTotalCost());
        pst.setString(6, listTourBooking.get(0).getFirstName());
        pst.setString(7, listTourBooking.get(0).getLastName());
        pst.setString(8, listTourBooking.get(0).getTel());
        pst.setString(9, listTourBooking.get(0).getEmail());
        pst.setString(10, listTourBooking.get(0).getAddress());
        pst.setString(11, "unpaid");
        pst.setString(12, listTourBooking.get(0).getDateorder());
        pst.executeUpdate();
        
        String tourBookingID = null;
        String sqlGetID = "select Top 1 TourBookingID from TourBooking order by TourBookingID desc";
        PreparedStatement pstGetID = con.prepareStatement(sqlGetID);
        ResultSet rs = pstGetID.executeQuery();
        while (rs.next()) {
            tourBookingID = rs.getString("TourBookingID");
        }
        
        for (int i = 0; i < listTravelerInfo.size(); i++) {
            String sqlTraveler = "insert into TravelerTour values(?,?,?,?,?,?)";
            PreparedStatement pstTraveler = con.prepareStatement(sqlTraveler);
            pstTraveler.setString(1, tourBookingID);
            pstTraveler.setInt(2, listTravelerInfo.get(i).getUserOrder());
            pstTraveler.setString(3, listTravelerInfo.get(i).getTravelerName());
            pstTraveler.setString(4, listTravelerInfo.get(i).getTravelerGender());
            pstTraveler.setString(5, listTravelerInfo.get(i).getTravelerType());
            pstTraveler.setString(6, listTravelerInfo.get(i).getTravelerPassport());
            pstTraveler.executeUpdate();
        }
        
        return SUCCESS;
    }

}
