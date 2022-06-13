/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.MovieEJB;
import entity.Movie;
import entity.Theater;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.faces.context.FacesContext;

/**
 *
 * @author chris
 */
@Named(value = "payBean")
@SessionScoped
public class payBean implements Serializable {

    @EJB
    private MovieEJB movieEJB;
    
    
    private String time;
    private String number;
    private  Movie movie;
    private  Theater theater;
    private String selectTickets;
    private int pricePer;  
    private String creditcard;
    private String showday;
    private String result;
    public payBean()
                        {
    }
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
    public String getShowday() {
        return result;
    }

    public void setShowday(String showday) {
        this.showday = showday;
    }
    public String getCreditcard() {
        return creditcard;
    }
    public void setCreditcard(String creditcard) {
        this.creditcard = creditcard;
    }
    public String getTime() {
        return time;
    }
    public void setTime(String time) {
        this.time = time;
    }
    public Movie getMovie() {
        return movie;
    }
    public void setMovie(Movie movie) {
        this.movie = movie;
    }
    public Theater getTheater() {
        return theater;
    }
    public void setTheater(Theater theater) {
        this.theater = theater;
    }
    public String getSelectTickets() {
        return selectTickets;
    }
    public void setSelectTickets(String selectTickets) {
        this.selectTickets = selectTickets;
    }
    public int getPrice() {
        return pricePer;
    }
    public void setPrice(int pricePer) {
        this.pricePer = pricePer;
    }
    
//    public String confirmPayment(String time, Movie m, Theater t){
//        this.time = time;
//        this.movie = m;
//        this.theater = t;
//        selectTickets = 1;
//        pricePer = selectTickets * 10;
//        return "Payment";
//    }
    public String validate(){
        int sT = Integer.parseInt(selectTickets);
        try{
            creditcard = "";
            if(creditcard==null){
                result="Credit card information is invalid";
                return "";
            }
            else if(creditcard!=null &&
                    sT>0){
                result="";
                pricePer = 10*sT;
                return "ConfirmationPage.xhtml";
            }
            
        }catch(Exception e){
        }
        return null;
    }    
 public String Payment(Movie movie){
        this.movie = movie;
        return "Payment.xhtml";
    }

    
}
   
   
