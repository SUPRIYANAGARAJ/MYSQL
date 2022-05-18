package com.example2;

import java.io.FileNotFoundException;
import java.io.FileReader;

public class ExploringException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			FileReader file = new FileReader ("C:\\Users\\252000\\Desktop\\Exception\\File.txt");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("\nCaught the Exception!");

	}

}
