package entity;
// Generated Aug 5, 2020 12:08:47 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

/**
 * Customers generated by hbm2java
 */
@Entity
@Table(name = "Customers")
public class Customers implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CustomerId")
    private int customerId;
    @Column(name = "Fullname")
    private String fullname;
    @Column(name = "Email")
    private String email;
    @Column(name = "Phone")
    private String phone;
    @Column(name = "Passwords")
    private String passwords;
    @Column(name = "Avatar")
    private String avatar;
    @Column(name = "Gender")
    private int gender;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Birthday")
    @Temporal(TemporalType.DATE)
    private Date birthday;
    @Column(name = "CustomerAddress")
    private String customerAddress;
    @Column(name = "CheckCode")
    private String checkCode;
    @Column(name = "CustomerStatus")
    private int customerStatus;
    @OneToMany(fetch = FetchType.EAGER)
    private Set orderses = new HashSet(0);
    @OneToMany(fetch = FetchType.EAGER)
    private Set wishlistses = new HashSet(0);
    @OneToMany(fetch = FetchType.EAGER)
    private Set productCommentses = new HashSet(0);

    public Customers() {
    }

    public Customers(int customerId, String fullname, String email, String passwords, String customerAddress, int customerStatus) {
        this.customerId = customerId;
        this.fullname = fullname;
        this.email = email;
        this.passwords = passwords;
        this.customerAddress = customerAddress;
        this.customerStatus = customerStatus;
    }

    public Customers(int customerId, String fullname, String email, String phone, String passwords, String avatar, int gender, Date birthday, String customerAddress, String checkCode, int customerStatus, Set orderses, Set wishlistses, Set productCommentses) {
        this.customerId = customerId;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.passwords = passwords;
        this.avatar = avatar;
        this.gender = gender;
        this.birthday = birthday;
        this.customerAddress = customerAddress;
        this.checkCode = checkCode;
        this.customerStatus = customerStatus;
        this.orderses = orderses;
        this.wishlistses = wishlistses;
        this.productCommentses = productCommentses;
    }

    public int getCustomerId() {
        return this.customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getFullname() {
        return this.fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPasswords() {
        return this.passwords;
    }

    public void setPasswords(String passwords) {
        this.passwords = passwords;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getGender() {
        return this.gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return this.birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getCustomerAddress() {
        return this.customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCheckCode() {
        return this.checkCode;
    }

    public void setCheckCode(String checkCode) {
        this.checkCode = checkCode;
    }

    public int getCustomerStatus() {
        return this.customerStatus;
    }

    public void setCustomerStatus(int customerStatus) {
        this.customerStatus = customerStatus;
    }

    public Set getOrderses() {
        return this.orderses;
    }

    public void setOrderses(Set orderses) {
        this.orderses = orderses;
    }

    public Set getWishlistses() {
        return this.wishlistses;
    }

    public void setWishlistses(Set wishlistses) {
        this.wishlistses = wishlistses;
    }

    public Set getProductCommentses() {
        return this.productCommentses;
    }

    public void setProductCommentses(Set productCommentses) {
        this.productCommentses = productCommentses;
    }

}
