package net.neiljudson.awt;

public class Graphics {
	
	/**
	 * draw point
	 * 
	 * @param g
	 * @param x
	 * @param y
	 */
	public static void drawPoint(java.awt.Graphics g, int x, int y) {
		g.drawLine(x, y, x, y);
	}
	
	/**
	 * draw square point
	 * 
	 * @param g
	 * @param x
	 * @param y
	 * @param length
	 */
	public static void drawSquarePoint(java.awt.Graphics g, int x, int y, int length) {
		for (int i = 0; i < length; i++) {
			int t = length / 2;
			g.drawLine(x - t, y - t + i, x + t, y - t + i);
		}
	}
}
