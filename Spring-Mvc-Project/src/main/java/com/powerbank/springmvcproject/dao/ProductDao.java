package com.powerbank.springmvcproject.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.powerbank.springmvcproject.model.Product;

@Component
@Repository
public class ProductDao {

	private static EntityManager manager;
	private static EntityManagerFactory factory;
	private static EntityTransaction transaction;
	private static Query query;

	public static void openConnection() {
		factory = Persistence.createEntityManagerFactory("spring");
		manager = factory.createEntityManager();
		transaction = manager.getTransaction();
	}

	public static void closeConnection() {
		if (factory != null) {
			factory.close();
		}
		if (manager != null) {
			manager.close();
		}
		if (transaction.isActive()) {
			transaction.rollback();
		}
	}

	public void createProduct(Product product) {
		openConnection();
		transaction.begin();
		manager.persist(product);
		transaction.commit();

	}

	public List<Product> getProducts() {
		openConnection();
		transaction.begin();
//		Product product=manager.find(Product.class,id);
		query = manager.createQuery("from Product");
		List<Product> products = query.getResultList();
		transaction.commit();
		return products;

	}

	public void deleteProduct(int pid) {
		openConnection();
		transaction.begin();
		Product p = manager.find(Product.class, pid);
		manager.remove(p);
		transaction.commit();

	}

	public Product getProduct(int pid) {
		openConnection();
		transaction.begin();
		Product p = manager.find(Product.class, pid);
		transaction.commit();
		return p;
	}

}
