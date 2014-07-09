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
import java.util.ArrayList;
import java.util.List;
import model.Car;

/**
 *
 * @author Doll
 */
public class MoreCar extends ActionSupport {

    private List<Car> listCar = new ArrayList<Car>();

    public List<Car> getListCar() {
        return listCar;
    }

    public void setListCar(List<Car> listCar) {
        this.listCar = listCar;
    }
    Connection con = da.ConnectionDB.getConnection();

    @Override
    public String execute() throws Exception {
        String sql = "select*from Car";
        PreparedStatement pst = con.prepareStatement(sql);
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
            listCar.add(c);
        }
        return SUCCESS;
    }

}
