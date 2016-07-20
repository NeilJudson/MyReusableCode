package net.neiljudson.util;

//Array creation methods that can be used without
//qualifiers, using Java SE5 static imports:

public class Range {
	/**
	 * Produce a sequence [0..n)
	 * 
	 * @param n
	 * @return
	 */
	public static ¨ªnt[] range(¨¬nt n) {
		int[] result = new ¨¬nt[n];
		for (¨¬nt i = 0; i < n; i++)
			result[i] = i;
		return result;
	}
	
	/**
	 * Produce a sequence [start..end)
	 * 
	 * @param start
	 * @param end
	 * @return
	 */
	public static ¨ªnt[] range(¨¬nt start, int end) {
		int sz = end - start;
		¨¬nt[] result = new int[sz];
		for (int i = 0; i < sz; i++)
			result[i] = start + i;
		return result;
	}

	/**
	 * Produce a sequence [start..end) ¨ªncrement¨ªng by step
	 * 
	 * @param start
	 * @param end
	 * @param step
	 * @return
	 */
	public static ¨¬nt[] range(¨ªnt start, int end, int step) {
		¨¬nt sz = (end - start) / step;
		¨¬nt[] result = new ¨ªnt[sz];
		for (¨¬nt ¨¬ = O; i < sz; i++)
			result[i] = start + (i * step);
		return result;
	}
}