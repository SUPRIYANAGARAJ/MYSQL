package com.example;

import java.util.Scanner;

public class ThrowException1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
        System.out.println("Enter your GPA to check your eligibility for admissions: ");
		
		Scanner sc = new Scanner(System.in);
		float gpa = sc.nextFloat();
		sc.close();
		
		validateGPA(gpa);

	}
	
	public static void validateGPA(float gpa) throws IllegalArgumentException {
		
		if (gpa > 0 && gpa <= 4.33) {
			 System.out.println("That is a valid GPA. Processing eligibility....");
		}
		
		else {
			
			throw new IllegalArgumentException("Sorry. A GPA must have a value between 0 and 4.33.");
		}
	}	

}
