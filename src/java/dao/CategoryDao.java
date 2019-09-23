/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import models.Category;

/**
 *
 * @author sidibe @sprinklr
 */
@Stateless
public class CategoryDao implements CategoryDaoLocal {

    @PersistenceContext
    EntityManager em;

    @Override
    public void addCategory(Category c) {
        em.persist(c);
    }

    @Override
    public Category getCategory(String name) {
        return em.find(Category.class, name);
    }

    @Override
    public List<Category> getAllCategories() {
        return em.createNamedQuery("Category.findAll").getResultList();
    }
}
