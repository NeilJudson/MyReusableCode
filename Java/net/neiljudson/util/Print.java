package net.neiljudson.util;

import java.io.PrintStream;

public class Print {
	/**
	 * �����е�print
	 * 
	 * @param obj
	 */
	public static void println(Object obj) {
		System.out.println(obj);
	}

	/**
	 * ���һ������
	 */
	public static void println() {
		System.out.println();
	}

	/**
	 * �������е�print
	 * 
	 * @param obj
	 */
	public static void print(Object obj) {
		System.out.print(obj);
	}

	/**
	 * The new Java SE5 printf() (from C)
	 * 
	 * @param format
	 * @param args
	 * @return
	 */
	public static PrintStream printf(String format, Object... args) {
		return System.out.printf(format, args);
	}
}
