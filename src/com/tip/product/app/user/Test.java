package com.tip.product.app.user;

public class Test {
	
	public static void main(String[] args) {
		
		UserDaoImpl impl=new UserDaoImpl();
		
		System.out.println("1="+impl.getUserList());
		
	}

}
