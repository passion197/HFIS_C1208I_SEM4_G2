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
import model.Country;
import model.Tour;

/**
 *
 * @author Doll
 */
public class EWindex extends ActionSupport {

    private List<Tour> listTour = new ArrayList<Tour>();
    private List<Country> listCountry = new ArrayList<Country>();

    public List<Country> getListCountry() {
        return listCountry;
    }

    public void setListCountry(List<Country> listCountry) {
        this.listCountry = listCountry;
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
        String sql = "select*from Tour order by TourID desc";
        PreparedStatement pst = con.prepareStatement(sql);
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
            t.setDescriptions("Descriptions");
            t.setDates(rs.getInt("Dates"));
            listTour.add(t);
        }
        return SUCCESS;
    }

    public List<Country> getCountry() {
        try {
            String sql = "select*from Country";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Country c = new Country();
                c.setCountryID(rs.getString("CountryID"));
                c.setCountryName(rs.getString("CountryName"));
                listCountry.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(EWindex.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCountry;
    }

}
