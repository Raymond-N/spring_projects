package com.example.authentication.productsjava.services;

import org.springframework.stereotype.Service;

import com.example.authentication.productsjava.repositories.ProductRepository;

@Service
public class ProductService {
	
	private final ProductRepository productRepository;

	public ProductService(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}
	
	// This has the same effect as above:
    thisProduct.getCategories().add(thisCategory);	// add the category to this products's list of categories
    productRepository.save(thisProduct);	// Save thisProduct, since you made changes to its category list.
	
	

}
