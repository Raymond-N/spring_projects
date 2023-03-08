package com.example.authentication.productsjava.services;

import org.springframework.stereotype.Service;

import com.example.authentication.productsjava.models.Category;
import com.example.authentication.productsjava.models.Product;
import com.example.authentication.productsjava.repositories.CategoryRepository;

@Service
public class CategoryService {
	
	private final CategoryRepository categoryRepository;

	public CategoryService(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}
	
	// retrieve an instance of a category using another method in the service.
    Category thisCategory = findCategoryById(categoryId);
    
    // retrieve an instance of a product using another method in the service.
    Product thisProduct = findProductById(productId);
    
    // add the product to this category's list of products
    thisCategory.getProducts().add(thisProduct);
    
    // Save thisCategory, since you made changes to its product list.
    categoryRepository.save(thisCategory);
	
	

}
