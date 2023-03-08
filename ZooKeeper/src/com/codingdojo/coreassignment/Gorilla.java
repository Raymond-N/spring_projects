package com.codingdojo.coreassignment;

public class Gorilla extends Mammal {
	
	public Gorilla(int energyLevel) {
		super(energyLevel);
	}
	
	public int throwSomething() {
		System.out.println("The gorilla just threw something!");
		energyLevel -= 5;
		displayEnergy();
		return energyLevel;
	}
	
	public int eatBananas() {
		System.out.println("The gorilla is happy while eating bananas.");
		energyLevel += 10;
		displayEnergy();
		return energyLevel;
	}
	
	public int climb() {
		System.out.println("The gorilla is climbing a tree!");
		energyLevel -= 10;
		displayEnergy();
		return energyLevel;
	}



}
