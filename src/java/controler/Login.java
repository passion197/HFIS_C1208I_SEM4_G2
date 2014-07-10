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

/**
 *
 * @author Doll
 */
public class Login extends ActionSupport {

    private String email;
    private String password;
    private String msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
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
    Connection con = da.ConnectionDB.getConnection();

    @Override
    public String execute() throws Exception {
        String sql = "select *from Users where Email=? and Pasword=?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, email);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();
        String name = "";
        String userID=null;
        while (rs.next()) {
            name = rs.getString("FirstName");
            userID=rs.getString("UserID");
        }
        if (name.equals("")) {
            msg="LOGIN failed! Please check Email or Password again !";
            return ERROR;
        } else {
            ActionContext.getContext().getSession().put("userID", userID);
            ActionContext.getContext().getSession().put("user", name);
            return SUCCESS;
        }

    }

}
