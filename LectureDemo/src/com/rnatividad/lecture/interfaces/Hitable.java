package com.rnatividad.lecture.interfaces;

public interface Hitable {
	abstract void setHealthPoints(int healthPoints);
	abstract int getHealthPoints();
	
	public default boolean getHit(int damage) {
		setHealthPoints(getHealthPoints() - damage);
		System.out.println("That was a hit!");
		return false;
	}

}
