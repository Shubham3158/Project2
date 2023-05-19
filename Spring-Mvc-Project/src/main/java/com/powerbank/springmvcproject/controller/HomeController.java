package com.powerbank.springmvcproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.powerbank.springmvcproject.dao.ProductDao;
import com.powerbank.springmvcproject.model.Product;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home(Model model) {
		ProductDao dao = new ProductDao();
		List<Product> products = dao.getProducts();
		model.addAttribute("products", products);
		return "home";
	}

	@RequestMapping("/addProduct")
	public String addProduct(Model model) {

		return "addProduct";
	}

	@RequestMapping(path = "/handleProduct", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		ProductDao dao = new ProductDao();
		dao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}

	@RequestMapping(path = "/delectProduct/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request) {
		ProductDao dao=new ProductDao();
		dao.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;

	}

}
