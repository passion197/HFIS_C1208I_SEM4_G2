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

/**
 *
 * @author Doll
 */
public class OrderTourInfor extends ActionSupport {

    List<TourBooking> listTourBooking = new ArrayList<TourBooking>();

    public List<TourBooking> getListTourBooking() {
        return listTourBooking;
    }

    public void setListTourBooking(List<TourBooking> listTourBooking) {
        this.listTourBooking = listTourBooking;
    }

    Connection con = da.ConnectionDB.getConnection();

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        String userId = (String) session.get("userID");
        String sql = "select*from TourBooking where UserID =?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, userId);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            TourBooking tb = new TourBooking();
            tb.setTourBookingID(rs.getInt("TourBookingID"));
            tb.setTourID(rs.getInt("TourID"));
            tb.setUserID(rs.getInt("UserID"));
            tb.setAmountAdults(rs.getInt("AmountAdults"));
            tb.setAmountChild(rs.getInt("AmountChild"));
            tb.setTotalCost(rs.getDouble("TotalCost"));
            tb.setFirstName(rs.getString("FirstName"));
            tb.setLastName(rs.getString("LastName"));
            tb.setTel(rs.getString("Telephone"));
            tb.setEmail(rs.getString("Email"));
            tb.setAddress(rs.getString("Address"));
            tb.setStatus(rs.getString("Status"));
            tb.setDateorder(rs.getString("DateOrder"));
            listTourBooking.add(tb);
        }
        return SUCCESS;
    }

}
