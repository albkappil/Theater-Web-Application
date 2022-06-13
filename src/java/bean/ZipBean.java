/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.MovieEJB;
import entity.Theater;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;

/**
 *
 * @author chris
 */
@Named(value = "zipBean")
@SessionScoped
public class ZipBean implements Serializable {

    @EJB
    private MovieEJB movieEJB;
    private String zipcode;
    private String[] thName = new String[2];
    boolean test = true;
    /**
     * Creates a new instance of ZipBean
     */
    public ZipBean() {
    }
    public String getZipcode(){
        return zipcode;
    }
    public void setZipcode(String zipcode){
        this.zipcode = zipcode;
    }
    
      
    public List<Theater> getTheaterZip(){
        try{
            this.setZipcode(zipcode);
             return movieEJB.getTheaterZip(Integer.parseInt(zipcode));
             
        }
        catch(Exception e){
            return null;
        }
    }
    
    public String colllectName(String name){
        if(test){
            thName[0]= name;
            test = false;
        }
        else{
            thName[1] = name;
            test = true;
        }
         
       
        return name;
    }
    
    
    public String getFirsttname(){
     String tempname = thName[0];
     thName[0] = "";
     return tempname; 
    }
    
    public String getSecondtname(){
     String tempname2 = thName[1];
     thName[1] = "";
     return tempname2;
    }
    
}
