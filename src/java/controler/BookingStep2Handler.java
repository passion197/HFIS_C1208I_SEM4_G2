/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controler;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.TourBooking;
import model.TravelerInfo;

/**
 *
 * @author Doll
 */
public class BookingStep2Handler extends ActionSupport{
    private List<TourBooking> listTourBooking= new ArrayList<TourBooking>();
    private List<TravelerInfo> listTravelerInfo= new ArrayList<TravelerInfo>();
    
    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        listTravelerInfo=(List<TravelerInfo>)session.get("listInfoss");
        for(int i=0;i<listTravelerInfo.size();i++){
            System.out.println("DDDDDDDDDDD"+listTravelerInfo.get(i).getTravelerName());
        }
        return SUCCESS;
    }
    
}
