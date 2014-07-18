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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Tour;

/**
 *
 * @author Doll
 */
public class Search extends ActionSupport {

    private String radio;
    private String tourDepart;
    private String tourReturn;
    private String amount;
    private String city;
    private List<Tour> listTour = new ArrayList<Tour>();

    public List<Tour> getListTour() {
        return listTour;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setListTour(List<Tour> listTour) {
        this.listTour = listTour;
    }

    public String getRadio() {
        return radio;
    }

    public void setRadio(String radio) {
        this.radio = radio;
    }

    public String getTourDepart() {
        return tourDepart;
    }

    public void setTourDepart(String tourDepart) {
        this.tourDepart = tourDepart;
    }

    public String getTourReturn() {
        return tourReturn;
    }

    public void setTourReturn(String tourReturn) {
        this.tourReturn = tourReturn;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }
    Connection con = da.ConnectionDB.getConnection();

    @Override
    public String execute() throws Exception {
        if (radio.equals("form2")) {
            SimpleDateFormat formater = new SimpleDateFormat("MM/dd/yyyy");
            Date dateDepart = (Date) formater.parse(tourDepart);
            SimpleDateFormat formaterString = new SimpleDateFormat("yyyy/MM/dd");
            String tourDepartLate = formaterString.format(dateDepart);
            Date dateReturn = (Date) formater.parse(tourReturn);
            String tourReturnLate = formaterString.format(dateReturn);
            String sql = "select*from Tour where TourDepart>=? and TourReturn <=? and SeatAvailable>=? and CityID=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, tourDepartLate);
            pst.setString(2, tourReturnLate);
            pst.setString(3, amount);
            pst.setString(4, city);
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
        }
        return SUCCESS;
    }

}
