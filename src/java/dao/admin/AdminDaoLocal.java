/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.admin;

import java.math.BigInteger;
import java.util.List;
import javax.ejb.Local;
import models.Admin;

/**
 *
 * @author sprinklr
 */
@Local
public interface AdminDaoLocal {
    void addAdmin(Admin a);
    Admin getAdmin(BigInteger phone);
    void editAdmin(Admin a);
    void deleteAdmin(BigInteger phone);
    List<Admin> getAllAdmins();
    Admin getLoginSession(BigInteger phone,String password);
    


    
}
