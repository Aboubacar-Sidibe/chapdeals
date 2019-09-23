/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.time.LocalDate;

/**
 *
 * @author sidibe
 */
public class RealTimeCustomer {

    private String username;
    private String phone;
    private String dob;
    private String address;
    private String email;
    private String password;
    private boolean contactchecked;
    private boolean mailchecked;

    public boolean isContactchecked() {
        return contactchecked;
    }

    public void setContactchecked(boolean contactchecked) {
        this.contactchecked = contactchecked;
    }

    public boolean ismailchecked() {
        return mailchecked;
    }

    public void setEmailchecked(boolean mailchecked) {
        this.mailchecked = mailchecked;
    }

    private String key;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

}
