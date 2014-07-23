/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controler;


import com.opensymphony.xwork2.ActionSupport;
import entity.OfficeAddress;
import java.util.List;
import model.Car;
import model.CarManagement;

/**
 *
 * @author Kha Chuong
 */
public class RentCarAction extends ActionSupport  {
    public String carID;
    public Car selectedCar;
    public List<OfficeAddress> listOffices;
    
     @Override
    public String execute() throws Exception {
         CarManagement mn = new CarManagement();
         listOffices = mn.getAllOficeAddress();
         selectedCar = mn.getCarByID(carID);
        return SUCCESS;
    }

    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public Car getSelectedCar() {
        return selectedCar;
    }

    public void setSelectedCar(Car selectedCar) {
        this.selectedCar = selectedCar;
    }

    public List<OfficeAddress> getListOffices() {
        return listOffices;
    }

    public void setListOffices(List<OfficeAddress> listOffices) {
        this.listOffices = listOffices;
    }

    
    
}
