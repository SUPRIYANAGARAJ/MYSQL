package com.example;

public class CompileTimeErrors2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] myArray = {12, 34, 8, 56, 42};
		
		int totalSum = 0;
		for (int num : myArray) {
			totalSum = totalSum  + num;
		}
		
		System.out.println("Sum elements present in our array is " + totalSum);

	}

}
