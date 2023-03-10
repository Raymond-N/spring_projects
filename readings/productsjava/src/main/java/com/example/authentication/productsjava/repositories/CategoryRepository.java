package com.example.authentication.productsjava.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.example.authentication.productsjava.models.Category;

public interface CategoryRepository extends CrudRepository<Category, Long> {
	
	List<Category> findAll();

}
