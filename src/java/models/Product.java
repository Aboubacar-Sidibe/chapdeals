/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.eclipse.persistence.annotations.Array;
import org.eclipse.persistence.annotations.Struct;

/**
 *
 * @author sidibe @sprinklr
 */
@Struct(name="keywords")
@Entity
@Table(name = "product")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Product.findAll", query = "SELECT p FROM Product p")
    , @NamedQuery(name = "Product.findById", query = "SELECT p FROM Product p WHERE p.id = :id")
    , @NamedQuery(name = "Product.findByName", query = "SELECT p FROM Product p WHERE p.name = :name")
    , @NamedQuery(name = "Product.findByPrice", query = "SELECT p FROM Product p WHERE p.price = :price")
    , @NamedQuery(name = "Product.findByDescription", query = "SELECT p FROM Product p WHERE p.description = :description")
    , @NamedQuery(name = "Product.findByQuantity", query = "SELECT p FROM Product p WHERE p.quantity = :quantity")
    , @NamedQuery(name = "Product.findByDiscount", query = "SELECT p FROM Product p WHERE p.discount = :discount")
    , @NamedQuery(name = "Product.findBySubCategory", query = "SELECT p FROM Product p WHERE p.subCategory = :subCategory")
    , @NamedQuery(name = "Product.findByKeywords", query = "SELECT p FROM Product p WHERE p.keywords = :keywords")
    , @NamedQuery(name = "Product.findByImg", query = "SELECT p FROM Product p WHERE p.img = :img")})
public class Product implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Long id;
    @Basic(optional = false)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @Column(name = "price")
    private BigInteger price;
    @Basic(optional = false)
    @Column(name = "description")
    private String description;
    @Basic(optional = false)
    @Column(name = "quantity")
    private int quantity;
    @Column(name = "discount")
    private Short discount;
    @Basic(optional = false)
    @Column(name = "sub_category")
    private String subCategory;
    
    @Column(columnDefinition="varchar array")
    @Array(databaseType="varchar")    
    private List<String> keywords;
    
    
    @Basic(optional = false)
    @Column(name = "img")
    private String img;
    @JoinColumn(name = "owner", referencedColumnName = "phone")
    @ManyToOne
    private Admin owner;
    @JoinColumn(name = "category", referencedColumnName = "name")
    @ManyToOne(optional = false)
    private Category category;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "product")
    private List<ProductReview> productReviewList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "product")
    private List<Wishlist> wishlistList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "product")
    private List<Orders> ordersList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "product")
    private List<Cart> cartList;
    
   

    public Product() {
    }

    public Product(Long id) {
        this.id = id;
    }

    public Product(Long id, String name, BigInteger price, String description, int quantity, String subCategory, String img) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.subCategory = subCategory;
        this.img = img;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigInteger getPrice() {
        return price;
    }

    public void setPrice(BigInteger price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Short getDiscount() {
        return discount;
    }

    public void setDiscount(Short discount) {
        this.discount = discount;
    }

    public String getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(String subCategory) {
        this.subCategory = subCategory;
    }

    public List<String> getKeywords() {
        return keywords;
    }

    public void setKeywords(List<String> keywords) {
        this.keywords = keywords;
    }

   
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Admin getOwner() {
        return owner;
    }

    public void setOwner(Admin owner) {
        this.owner = owner;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Product)) {
            return false;
        }
        Product other = (Product) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Product[ id=" + id + " ]";
    }

   
    
}
