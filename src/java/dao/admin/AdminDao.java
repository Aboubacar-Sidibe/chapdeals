/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.admin;

import java.math.BigInteger;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import models.Admin;

/**
 *
 * @author sprinklr
 */
@Stateless
public class AdminDao implements AdminDaoLocal {

    @PersistenceContext
    EntityManager em;

    @Override
    public void addAdmin(Admin a) {
        em.persist(a);
    }

    @Override
    public Admin getAdmin(BigInteger phone) {
        return em.find(Admin.class, phone);
    }

    @Override
    public void editAdmin(Admin a) {
        em.merge(a);
    }

    @Override
    public void deleteAdmin(BigInteger phone) {
        em.remove(getAdmin(phone));
    }

    @Override
    public List<Admin> getAllAdmins() {
        return em.createNamedQuery("Admin.findAll").getResultList();
    }

    @Override
    public Admin getLoginSession(BigInteger phone, String password) {
        Query query = em.createNamedQuery("Admin.findByPhoneAndPassword");
        query.setParameter("phone", phone);
        query.setParameter("password", password);
        try {
            return (Admin) query.getSingleResult();
        }catch(NoResultException nre)
        {
            return null;
        }
    }

}
