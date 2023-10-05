package com.crudproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.crudproject.dao.ProductDao;
import com.crudproject.entity.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home(Model model){
		List<Product> products = productDao.getAllProducts();
		model.addAttribute("products", products);
		return "index";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(Model model){
		model.addAttribute("title", "Add Product");
		return "addproductform";
	}
	
	@RequestMapping(path="/handleaddproduct", method=RequestMethod.POST)
	public RedirectView handleAddProduct(@ModelAttribute Product product, HttpServletRequest req){
		System.out.println(product);
		productDao.createProduct(product);
		
		RedirectView rv = new RedirectView();
		rv.setUrl(req.getContextPath());
		
		return rv;
	}
	
	@RequestMapping("/deleteProduct/{productid}")
	public RedirectView deleteProduct(@PathVariable("productid") int productId ,HttpServletRequest req){
		
		productDao.deleteProduct(productId);
		RedirectView rv = new RedirectView();
		rv.setUrl(req.getContextPath());
		return rv;
	}
	
	@RequestMapping("/updateProduct/{productid}")
	public String updateProduct(@PathVariable("productid") int productId ,Model model){
		
		Product product = this.productDao.getProduct(productId);
		model.addAttribute("product", product);
		return "updateproductform";
	}
	
	
	
}
