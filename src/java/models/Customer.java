/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author sprinklr
 */
@Entity
@Table(name = "customer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Customer.findAll", query = "SELECT c FROM Customer c")
    , @NamedQuery(name = "Customer.findByPhone", query = "SELECT c FROM Customer c WHERE c.phone = :phone")
    , @NamedQuery(name = "Customer.findByUsername", query = "SELECT c FROM Customer c WHERE c.username = :username")
    , @NamedQuery(name = "Customer.findByEmail", query = "SELECT c FROM Customer c WHERE c.email = :email")
    , @NamedQuery(name = "Customer.findByPassword", query = "SELECT c FROM Customer c WHERE c.password = :password")
    , @NamedQuery(name = "Customer.findByCountry", query = "SELECT c FROM Customer c WHERE c.country = :country")
    , @NamedQuery(name = "Customer.findByState", query = "SELECT c FROM Customer c WHERE c.state = :state")
    , @NamedQuery(name = "Customer.findByCity", query = "SELECT c FROM Customer c WHERE c.city = :city")
    , @NamedQuery(name = "Customer.findByStreet", query = "SELECT c FROM Customer c WHERE c.street = :street")
    , @NamedQuery(name = "Customer.findByPin", query = "SELECT c FROM Customer c WHERE c.pin = :pin")
    , @NamedQuery(name = "Customer.findByCredit", query = "SELECT c FROM Customer c WHERE c.credit = :credit")
    , @NamedQuery(name = "Customer.findByImg", query = "SELECT c FROM Customer c WHERE c.img = :img")
    , @NamedQuery(name = "Customer.findByDob", query = "SELECT c FROM Customer c WHERE c.dob = :dob")})
public class Customer implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "phone")
    private BigInteger phone;
    @Basic(optional = false)
    @Column(name = "username")
    private String username;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @Column(name = "country")
    private String country;
    @Column(name = "state")
    private String state;
    @Basic(optional = false)
    @Column(name = "city")
    private String city;
    @Column(name = "street")
    private String street;
    @Column(name = "pin")
    private String pin;
    @Column(name = "credit")
    private Integer credit;
    @Column(name = "img")
    private String img;
    @Column(name = "dob")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @OneToMany(mappedBy = "customer")
    private List<ProductReview> productReviewList;
    @OneToMany(mappedBy = "customer")
    private List<Wishlist> wishlistList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "customer")
    private List<Orders> ordersList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "customer")
    private List<Cart> cartList;
    private transient String address;

    public Customer() {
    }

    public Customer(BigInteger phone) {
        this.phone = phone;
    }

    public Customer(BigInteger phone, String username, String password, String country, String city) {
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.country = country;
        this.city = city;
    }

    public BigInteger getPhone() {
        return phone;
    }

    public void setPhone(BigInteger phone) {
        this.phone = phone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    @XmlTransient
    public List<ProductReview> getProductReviewList() {
        return productReviewList;
    }

    public void setProductReviewList(List<ProductReview> productReviewList) {
        this.productReviewList = productReviewList;
    }

    @XmlTransient
    public List<Wishlist> getWishlistList() {
        return wishlistList;
    }

    public void setWishlistList(List<Wishlist> wishlistList) {
        this.wishlistList = wishlistList;
    }

    @XmlTransient
    public List<Orders> getOrdersList() {
        return ordersList;
    }

    public void setOrdersList(List<Orders> ordersList) {
        this.ordersList = ordersList;
    }

    @XmlTransient
    public List<Cart> getCartList() {
        return cartList;
    }

    public void setCartList(List<Cart> cartList) {
        this.cartList = cartList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (phone != null ? phone.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Customer)) {
            return false;
        }
        Customer other = (Customer) object;
        if ((this.phone == null && other.phone != null) || (this.phone != null && !this.phone.equals(other.phone))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Customer[ phone=" + phone + " ]";
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
}
