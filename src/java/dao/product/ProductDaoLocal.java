/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.product;

import javax.ejb.Local;
import models.Product;

/**
 *
 * @author sprinklr
 */
@Local
public interface ProductDaoLocal {
     void addProduct(Product product);
}
