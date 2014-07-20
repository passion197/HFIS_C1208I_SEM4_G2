/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controler;

import com.opensymphony.xwork2.ActionSupport;
import model.Car;
import model.CarManagement;

/**
 *
 * @author Kha Chuong
 */
public class RentCarAction extends ActionSupport  {
    public String carID;
    public Car selectedCar;
     @Override
    public String execute() throws Exception {
         CarManagement mn = new CarManagement();
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
    
}
