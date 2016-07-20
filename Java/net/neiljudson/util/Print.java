package net.neiljudson.util;

import java.io.PrintStream;

public class Print {
	/**
	 * 带换行的print
	 * 
	 * @param obj
	 */
	public static void println(Object obj) {
		System.out.println(obj);
	}

	/**
	 * 输出一个空行
	 */
	public static void println() {
		System.out.println();
	}

	/**
	 * 不带换行的print
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
