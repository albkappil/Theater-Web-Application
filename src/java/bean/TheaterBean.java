/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.MovieEJB;
import entity.Availablemovies;
import entity.Movie;
import entity.Theater;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.faces.context.FacesContext;

/**
 *
 * @author chris
 */
@Named(value = "theaterBean")
@SessionScoped
public class TheaterBean implements Serializable {

    @EJB
    private MovieEJB movieEJB;
    private Theater theater;
    private List<String> movietimes;
    private List<Availablemovies> availableTimes;
    private List<Movie> movies; 
    
 
    public TheaterBean() {
    }
    
    public Theater getTheater(){
        return theater;
    }
    
    public void setTheater(Theater theater){
        this.theater = theater;
    }
    
    public String viewTheater(Theater theater){
        this.theater = theater;
        return "Theater.xhtml";
    }
    public String backToTheater(){
        FacesContext fc = FacesContext.getCurrentInstance();
        Map<String,String> params = fc.getExternalContext().getRequestParameterMap();
        String name = params.get("name");
        theater = movieEJB.getTheaterName(name);
        return "Theater";
    }
    
    
     
    public List <Movie> getMoviesList(){
        return movieEJB.getMovies(theater.getName());
    }
    // Get times for movies
    public void getAvailableName(){
        availableTimes = movieEJB.getAvailableByName(theater.getName());
        movietimes = new ArrayList<String>();
        for(Availablemovies a : availableTimes){ movietimes.add(a.getListtimes());
        }
    }
 public List<String> getTimes(String title){
        getAvailableName();
        List<String> times;
        for(Availablemovies a : availableTimes){ if(a.getTitle().equals(title)){ times = Arrays.asList(a.getListtimes().split(","));
                return times;
            }
    }   return null;
}
        public String Payment(){
        FacesContext fc = FacesContext.getCurrentInstance();
        Map<String,String> params = fc.getExternalContext().getRequestParameterMap();
        String name = params.get("name");
        theater = movieEJB.getTheaterName(name);
        return "Payment";
    }
     
      
     
 }

    
