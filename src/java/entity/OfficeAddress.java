/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entity;

/**
 *
 * @author Kha Chuong
 */
public class OfficeAddress {
    private int OfficeAddressID;
    private String OfficeAddress;
    private String OfficePhone;
    private String OfficeMail;

    public int getOfficeAddressID() {
        return OfficeAddressID;
    }

    public void setOfficeAddressID(int OfficeAddressID) {
        this.OfficeAddressID = OfficeAddressID;
    }

    public String getOfficeAddress() {
        return OfficeAddress;
    }

    public void setOfficeAddress(String OfficeAddress) {
        this.OfficeAddress = OfficeAddress;
    }

    public String getOfficePhone() {
        return OfficePhone;
    }

    public void setOfficePhone(String OfficePhone) {
        this.OfficePhone = OfficePhone;
    }

    public String getOfficeMail() {
        return OfficeMail;
    }

    public void setOfficeMail(String OfficeMail) {
        this.OfficeMail = OfficeMail;
    }
    
    
}
