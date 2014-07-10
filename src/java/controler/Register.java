/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Doll
 */
public class Register extends ActionSupport {

    private String first_name;
    private String last_name;
    private String email;
    private String password;
    private String confirm_email;
    private String confirm_password;
    private String msg;
    private String tel;
    private String address;

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm_email() {
        return confirm_email;
    }

    public void setConfirm_email(String confirm_email) {
        this.confirm_email = confirm_email;
    }

    public String getConfirm_password() {
        return confirm_password;
    }

    public void setConfirm_password(String confirm_password) {
        this.confirm_password = confirm_password;
    }
    Connection con = da.ConnectionDB.getConnection();

    @Override
    public String execute() throws Exception {
        if (confirm_email.equals(email) && password.equals(confirm_password)) {
            String sql = "insert into Users values (?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, email);
            pst.setString(2, password);
            pst.setString(3, tel);
            pst.setString(4, first_name);
            pst.setString(5, last_name);
            pst.setString(6, address);
            pst.executeUpdate();
            msg = "Register Success !";
            return SUCCESS;
        } else {
            msg = "Register Failed! Please check information again !";
            return ERROR;
        }

    }

}
