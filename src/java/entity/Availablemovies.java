/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author chris
 */
@Entity
@Table(name = "AVAILABLEMOVIES")
@NamedQueries({
    @NamedQuery(name = "Availablemovies.findAll", query = "SELECT a FROM Availablemovies a"),
    @NamedQuery(name = "Availablemovies.findById", query = "SELECT a FROM Availablemovies a WHERE a.id = :id"),
    @NamedQuery(name = "Availablemovies.findByName", query = "SELECT a FROM Availablemovies a WHERE a.name = :name"),
    @NamedQuery(name = "Availablemovies.findByTitle", query = "SELECT a FROM Availablemovies a WHERE a.title = :title"),
    @NamedQuery(name = "Availablemovies.findByListtimes", query = "SELECT a FROM Availablemovies a WHERE a.listtimes = :listtimes")})
public class Availablemovies implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @Size(max = 50)
    @Column(name = "NAME")
    private String name;
    @Size(max = 25)
    @Column(name = "TITLE")
    private String title;
    @Size(max = 100)
    @Column(name = "LISTTIMES")
    private String listtimes;

    public Availablemovies() {
    }

    public Availablemovies(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getListtimes() {
        return listtimes;
    }

    public void setListtimes(String listtimes) {
        this.listtimes = listtimes;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Availablemovies)) {
            return false;
        }
        Availablemovies other = (Availablemovies) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Availablemovies[ id=" + id + " ]";
    }
    
}
