package com.example1;

public class ExploringException2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String my_strings[] = { "Hello", "java", null, "Program", };
		
		for (String str : my_strings) {
			
			System.out.format("The String %s has a length of %d\n",
					     str.toUpperCase(), str.length());
		}

	}

}