package com.codingdojo.projectmanager.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.projectmanager.models.Project;
import com.codingdojo.projectmanager.repositories.ProjectRepo;

@Service
public class ProjectService {
	
	// adding the book repository as a dependency
		@Autowired
		private ProjectRepo projectRepo;
	    
	    public ProjectService(ProjectRepo projectRepo) {
	        this.projectRepo = projectRepo;
	    }
	    // returns all the projects
	    public List<Project> allProjects() {
	        return projectRepo.findAll();
	    }
	    // creates a project
	    public Project createProject(Project p) {
	        return projectRepo.save(p);
	    }
	    // retrieves a project
	    public Project findProject(Long id) {
	        Optional<Project> optionalProject = projectRepo.findById(id);
	        if(optionalProject.isPresent()) {
	            return optionalProject.get();
	        } else {
	            return null;
	        }
	    }
	    
	    // updates a project
	    public Project updateProject(Project p) {
	    	return projectRepo.save(p);
	    }
	    
	    // deletes a project
	    public void deleteProject(Project p) {
	    	projectRepo.delete(p);
	    }

}
