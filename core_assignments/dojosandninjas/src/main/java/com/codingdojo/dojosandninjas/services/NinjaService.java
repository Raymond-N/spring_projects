package com.codingdojo.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.repositories.NinjaRepo;

@Service
public class NinjaService {
	
	// adding the book repository as a dependency
    private final NinjaRepo ninjaRepo;

	public NinjaService(NinjaRepo ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
	// returns all the ninjas
    public List<Ninja> allNinjas() {
        return ninjaRepo.findAll();
    }
    // creates a ninja
    public Ninja createNinja(Ninja n) {
        return ninjaRepo.save(n);
    }
    // retrieves a ninja
    public Ninja findNinja(Long id) {
        Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
        if(optionalNinja.isPresent()) {
            return optionalNinja.get();
        } else {
            return null;
        }
    }
    
    

}
