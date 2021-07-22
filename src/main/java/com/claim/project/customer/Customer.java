package com.claim.project.customer;

public class Customer {
	
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private int age;
	private Address address;
	
	public Customer() {
		super();
	}

	public Customer(String firstName, String lastName, String email, String password, int age, Address address) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.age = age;
	}

	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public Address getAddress() {
		return address;
	}
	
	public void setAddress(Address address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return firstName + " " + lastName + ", " + email + ", " + password + ", " + age + ", " + address;
	}
	


}
