package com.example1;

import java.util.Scanner;

import javax.naming.InvalidNameException;

public class ThrowExceptions1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

        Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter your name");
		String uname = sc.next();
		
		System.out.println("Enter your GPA");
		float gpa = sc.nextFloat();
		
		sc.close();
		
		try {
		   
			intermediateFunction(uname, gpa);
		} catch (IllegalArgumentException | InvalidNameException e) {
			
			System.out.println("An exception was thrown : " +e.getClass());
			e.printStackTrace();
		}
	}
	
	public static void intermediateFunction(String userId, float gpa) throws IllegalArgumentException, InvalidNameException
	{
		validateStudent(userId, gpa);
	}
	public static void validateStudent(String userId, float gpa) throws IllegalArgumentException, InvalidNameException {
	
	    if(userId.startsWith("loony_")) {
		System.out.println("The username checks out....");
	} else {
		throw new InvalidNameException("The username is not in the correct format");
	}
	
	if (gpa > 0 && gpa <= 4.33) {
		 System.out.println("That is a valid GPA. Processing eligibility....");
	}
	
	else {
		
		throw new IllegalArgumentException("Sorry. A GPA must have a value between 0 and 4.33.");
	}

}
	}

