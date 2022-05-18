package com.example1;

public class ExploringExceptions3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String num_strs[] = { "Hello", "Java", null, "Program", };
		
		for (String str : num_strs) {
			
			System.out.println(str);
		}
		
		num_strs[4] = "Python";
		System.out.println(num_strs[4]);

	}

}
