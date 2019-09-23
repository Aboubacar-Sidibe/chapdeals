/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author sprinklr
 */
@Entity
@Table(name = "product_review")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ProductReview.findAll", query = "SELECT p FROM ProductReview p")
    , @NamedQuery(name = "ProductReview.findById", query = "SELECT p FROM ProductReview p WHERE p.id = :id")
    , @NamedQuery(name = "ProductReview.findByRating", query = "SELECT p FROM ProductReview p WHERE p.rating = :rating")
    , @NamedQuery(name = "ProductReview.findByComment", query = "SELECT p FROM ProductReview p WHERE p.comment = :comment")
    , @NamedQuery(name = "ProductReview.findByAddedOn", query = "SELECT p FROM ProductReview p WHERE p.addedOn = :addedOn")})
public class ProductReview implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Long id;
    @Basic(optional = false)
    @Column(name = "rating")
    private short rating;
    @Column(name = "comment")
    private String comment;
    @Column(name = "added_on")
    @Temporal(TemporalType.TIMESTAMP)
    private Date addedOn;
    @JoinColumn(name = "customer", referencedColumnName = "phone")
    @ManyToOne
    private Customer customer;
    @JoinColumn(name = "product", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Product product;

    public ProductReview() {
    }

    public ProductReview(Long id) {
        this.id = id;
    }

    public ProductReview(Long id, short rating) {
        this.id = id;
        this.rating = rating;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public short getRating() {
        return rating;
    }

    public void setRating(short rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getAddedOn() {
        return addedOn;
    }

    public void setAddedOn(Date addedOn) {
        this.addedOn = addedOn;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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
        if (!(object instanceof ProductReview)) {
            return false;
        }
        ProductReview other = (ProductReview) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.ProductReview[ id=" + id + " ]";
    }
    
}
