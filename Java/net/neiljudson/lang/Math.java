package net.neiljudson.lang;

public class Math {
	
	/**
	 * sinAngle
	 * 
	 * @param angle
	 * @return
	 */
	public static double sinAngle(double angle) {
		return java.lang.Math.sin(angle * java.lang.Math.PI / 180);
	}
	
	/**
	 * cosAngle
	 * 
	 * @param angle
	 * @return
	 */
	public static double cosAngle(double angle) {
		return java.lang.Math.cos(angle * java.lang.Math.PI / 180);
	}
}
