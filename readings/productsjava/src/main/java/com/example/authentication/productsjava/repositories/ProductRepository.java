package com.example.authentication.productsjava.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.example.authentication.productsjava.models.Product;

public interface ProductRepository extends CrudRepository<Product, Long> {
	
	List<Product> findAll();

}
