package com.codingdojo.coreassignment;

public class Bat extends Mammal {

//	public int enrgyLevel = 300;
	
	public int fly() {
		System.out.println("WOOOSH! The bat is in flight");
		energyLevel -= 50;
		displayEnergy();
		return energyLevel;
	}
	
	public int eatHumans() {
		System.out.println("Ummmm....the bat is um.....eating. Smh");
		energyLevel += 25;
		displayEnergy();
		return energyLevel;
	}
	
	public int attackTown() {
		System.out.println("Ruuuunnnnn! The town is under attack!");
		energyLevel -= 100;
		displayEnergy();
		return energyLevel;
	}
	
	public Bat() {
		super(300);
		// TODO Auto-generated constructor stub
	}
	

}
