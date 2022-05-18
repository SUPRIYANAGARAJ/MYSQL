package com.example2;

import java.io.FileNotFoundException;
import java.io.FileReader;

public class ExploringException2 {

	public static void main(String[] args) throws FileNotFoundException {
		// TODO Auto-generated method stub
		
		try {
			FileReader file = new FileReader ("C:\\Users\\252000\\Desktop\\Exception\\File.txt");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("\nThe file was not found. Create File.txt and re-run,");
		}
		
		
		System.out.println("The code execution is complete!");

	}

}
