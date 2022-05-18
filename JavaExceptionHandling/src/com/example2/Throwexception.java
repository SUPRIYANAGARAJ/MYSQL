package com.example2;

import java.util.Scanner;

import javax.naming.InvalidNameException;

public class Throwexception {

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
			} catch (InvalidNameException e) {
				
				System.out.println(e.getClass() + ": The Username invalid.");
				e.printStackTrace();
			}
		}
		
		public static void intermediateFunction(String userId, float gpa) throws  InvalidNameException
		{
		
			try {
				   
				validateStudent(userId, gpa);
			} catch (IllegalArgumentException e) {
				
				System.out.println(e.getClass() + ": The GPA is invalid.");
				e.printStackTrace();
			}
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


