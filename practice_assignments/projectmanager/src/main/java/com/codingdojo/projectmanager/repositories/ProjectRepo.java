package com.codingdojo.projectmanager.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.projectmanager.models.Project;

public interface ProjectRepo extends CrudRepository<Project, Long> {
	
	// this method retrieves all the projects from the database
    List<Project> findAll();

}
