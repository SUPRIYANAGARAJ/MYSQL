package com.example;

import java.util.Scanner;

public class CompileTimeErrors1 {
	
	public static void main(String[] args) {
		
		System.out.println("Enter any number");
		
		Scanner sc = new Scanner(System.in);
		
		int num = sc.nextInt();
		
		sc.close();
		
		System.out.println("You have  entered " + num);
	}

}
