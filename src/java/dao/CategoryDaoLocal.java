/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.ejb.Local;
import models.Category;

/**
 *
 * @author sprinklr
 */
@Local
public interface CategoryDaoLocal 
{
    void addCategory(Category c);
    Category getCategory(String name);
    List<Category> getAllCategories();

}
