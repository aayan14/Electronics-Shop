package com.crudproject.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.crudproject.entity.Product;

@Component
public class ProductDao {
	
	// create a product
	@Transactional
	public void createProduct(Product product){
		this.template.saveOrUpdate(product);
	}
	//get all product
	public List<Product> getAllProducts(){
		List<Product> allProducts = this.template.loadAll(Product.class);
		return allProducts;
	}
	//delete a product
	@Transactional
	public void deleteProduct(int productId){
		Product productToDelete = this.template.load(Product.class, productId);
		this.template.delete(productToDelete);
	}
	// get one product
	public Product getProduct(int productId){
		return this.template.get(Product.class, productId);
	}
	
	
	
	@Autowired
	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	
	
	
}
