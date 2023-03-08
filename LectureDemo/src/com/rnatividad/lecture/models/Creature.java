package com.rnatividad.lecture.models;

import com.rnatividad.lecture.interfaces.Hitable;

public class Creature extends Entity implements Hitable{
	protected int speed;
	protected int height;
	protected String name;
	protected int armorRating;
	
	public Creature(int healthPoints, int speed, int height, String name, int armorRating) {
		super(healthPoints);
		this.speed = speed;
		this.height = height;
		this.name = name;
		this.armorRating = armorRating;
	}
	
	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		this.speed = speed;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getArmorRating() {
		return armorRating;
	}

	public void setArmorRating(int armorRating) {
		this.armorRating = armorRating;
	}
	
	public boolean getHit(int damage) {
		if(damage > armorRating) {
			setHealthPoints(getHealthPoints() - damage);
			System.out.println("That was a hit!");
			return true;
		} else {
			System.out.println("That was a miss!");
			return false;
		}
	}
	
	

}
