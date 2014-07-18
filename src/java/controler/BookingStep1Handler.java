/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import model.TourBooking;
import model.TravelerInfo;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Doll
 */
public class BookingStep1Handler extends ActionSupport {

    private int totalTraveler;
    private String first_name;
    private String last_name;
    private String tel;
    private String email;
    private String address;
    private int tourId;
    private int seatAvailable;
    private double tourAdults;
    private double tourChild;
    private double totalCost;
    private int countAdults;
    private int countChild;
    private List<TravelerInfo> listInfo = new ArrayList<TravelerInfo>();
    private List<TourBooking> listTourBook = new ArrayList<TourBooking>();

    public List<TravelerInfo> getListInfo() {
        return listInfo;
    }

    public void setListInfo(List<TravelerInfo> listInfo) {
        this.listInfo = listInfo;
    }

    public List<TourBooking> getListTourBook() {
        return listTourBook;
    }

    public void setListTourBook(List<TourBooking> listTourBook) {
        this.listTourBook = listTourBook;
    }

    public int getTotalTraveler() {
        return totalTraveler;
    }

    public void setTotalTraveler(int totalTraveler) {
        this.totalTraveler = totalTraveler;
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

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getTourId() {
        return tourId;
    }

    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    public int getSeatAvailable() {
        return seatAvailable;
    }

    public void setSeatAvailable(int seatAvailable) {
        this.seatAvailable = seatAvailable;
    }

    public double getTourAdults() {
        return tourAdults;
    }

    public void setTourAdults(double tourAdults) {
        this.tourAdults = tourAdults;
    }

    public double getTourChild() {
        return tourChild;
    }

    public void setTourChild(double tourChild) {
        this.tourChild = tourChild;
    }

    public double getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    public int getCountAdults() {
        return countAdults;
    }

    public void setCountAdults(int countAdults) {
        this.countAdults = countAdults;
    }

    public int getCountChild() {
        return countChild;
    }

    public void setCountChild(int countChild) {
        this.countChild = countChild;
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Map session = ActionContext.getContext().getSession();
        countAdults = 0;
        countChild = 0;
        for (int i = 1; i <= totalTraveler; i++) {
            TravelerInfo t = new TravelerInfo();
            t.setTourBookingID(tourId);
            t.setUserOrder(Integer.parseInt((String) session.get("userID")));
            t.setTravelerName(request.getParameter("fullname" + i));
            t.setTravelerGender(request.getParameter("gender" + i));
            t.setTravelerType(request.getParameter("type" + i));
            if (request.getParameter("type" + i).equals("adults")) {
                countAdults++;
            } else {
                countChild++;
            }
            t.setTravelerPassport(request.getParameter("passport" + i));
            listInfo.add(t);
        }
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        //get current date time with Date()
        Date date = new Date();
        
        totalCost = countAdults * tourAdults + countChild * tourChild;
        TourBooking tb = new TourBooking();
        tb.setTourID(tourId);
        tb.setUserID(Integer.parseInt((String) session.get("userID")));
        tb.setAmountAdults(countAdults);
        tb.setAmountChild(countChild);
        tb.setTotalCost(totalCost);
        tb.setFirstName(first_name);
        tb.setLastName(last_name);
        tb.setTel(tel);
        tb.setEmail(email);
        tb.setAddress(address);
        tb.setDateorder(dateFormat.format(date));
        tb.setStatus("unpaid");
        listTourBook.add(tb);
        ActionContext.getContext().getSession().put("listInfoss",listInfo);
        ActionContext.getContext().getSession().put("listTourBookss",listTourBook);
        return SUCCESS;

    }

}
