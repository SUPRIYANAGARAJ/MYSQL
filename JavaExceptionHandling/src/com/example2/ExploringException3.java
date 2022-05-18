package com.example2;

import java.io.FileInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.EOFException;

public class ExploringException3 {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Contents of the file:\n");
		
		FileInputStream myFile = null;
		
		try {
			myFile  = new FileInputStream("C:\\Users\\252000\\Desktop\\Exception\\firstFile.txt");
			
			DataInputStream readFile = new DataInputStream(myFile);
			
			while (true) {
				
				System.out.println(readFile.readUTF());
			}
		} catch (IOException e) {
			
			System.out.println("An IOException has been thrown.");
			e.printStackTrace();
		}
		

	}

}
