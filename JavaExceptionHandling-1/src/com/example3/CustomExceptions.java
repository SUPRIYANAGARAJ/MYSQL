package com.example3;

public class CustomExceptions {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//userRequest("loony_corn", "login");
		userRequest("corn_loony", "login");
	}
	
	public static void userRequest(String userId, String operation) {
		 if(userId.startsWith("loony_")) {
			 System.out.println("The username checks out...");
		 } else {
			 throw new InvalidUsernameException("The username is not in the correct format");
		 }
		 
		 System.out.format("\nThe user %s has requested the %s operation.",
		     userId, operation);
		 
	}

}
