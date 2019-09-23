/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.product;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import models.Product;

/**
 *
 * @author sprinklr
 */
@Stateless
public class ProductDao implements ProductDaoLocal{
@PersistenceContext
EntityManager em;
    @Override
    public void addProduct(Product product) {
        em.persist(product);
    }
    
}
