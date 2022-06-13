/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import entity.Availablemovies;

import entity.Movie;
import entity.Theater;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author chris
 */
@Stateless
public class MovieEJB {

    @PersistenceContext(unitName = "MovieTheaterPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    public List<Theater> findAllTheater(){
        return em.createNamedQuery("Theater.findAll", Theater.class)
                .getResultList();
    } 
    
    public List<Movie> getMovies(String name){
        return em.createNamedQuery("Theater.findMovies", Movie.class)
                .setParameter("name", name).getResultList();
    }
    
     public List<Theater> getTheaterZip(int zipcode){
       return em.createNamedQuery("Theater.findByZipcode", Theater.class)
                .setParameter("zipcode", zipcode).getResultList();
    }
  
     public Theater getTheaterName(String name){
        return em.createNamedQuery("Theater.findByName", Theater.class)
                .setParameter("name", name).getSingleResult();
     }

      public List<Availablemovies> getAvailableByName(String name){
        return em.createNamedQuery("Availablemovies.findByName", Availablemovies.class)
                .setParameter("name", name).getResultList();
    }
}
