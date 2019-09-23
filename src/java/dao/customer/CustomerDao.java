/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.customer;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import models.Customer;

/**
 *
 * @author sprinklr
 */
@Stateless
public class CustomerDao implements CustomerDaoLocal{
@PersistenceContext
EntityManager em;
    @Override
    public void addCustomer(Customer c) {
        em.persist(c);
    }
    
}
