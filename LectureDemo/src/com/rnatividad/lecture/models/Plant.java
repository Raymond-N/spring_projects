package com.rnatividad.lecture.models;

import com.rnatividad.lecture.interfaces.Hitable;

public class Plant extends Entity implements Hitable {
	protected String name;
	protected int seedCount;
	
	public Plant(int healthPoints, String name, int seedCount) {
		super(healthPoints);
		this.name = name;
		this.seedCount = seedCount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSeedCount() {
		return seedCount;
	}

	public void setSeedCount(int seedCount) {
		this.seedCount = seedCount;
	}
	
	public boolean getHit(int damage) {
		setHealthPoints(getHealthPoints() - damage);
		System.out.println("That was a hit!");
		return false;
	}
	
	

}
