package com.claim.project.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.claim.project.customer.Address;
import com.claim.project.customer.Customer;

@Service
public class CustomerService {

	static List<Customer> newAcc = new LinkedList<>();
	
	static {
	newAcc.add(new Customer("David", "Elf", "email@email.com", "password", 25, new Address("234 Creek Dr.", "St. Louis", "MO", "98645")));
	newAcc.add(new Customer("Chuck", "Hill", "email2@email.com", "password", 25, new Address("234 Creek Dr.", "St. Louis", "MO", "98645")));
	newAcc.add(new Customer("Lucas", "Tiller", "email3@email.com", "password", 25, new Address("234 Creek Dr.", "St. Louis", "MO", "98645")));
	newAcc.add(new Customer("Cher", "Lapus", "email4@email.com", "password", 25, new Address("234 Creek Dr.", "St. Louis", "MO", "98645")));
	}
	
	public void saveCustomer(Customer newCustomer) {
		newAcc.add(newCustomer);
	}
	
	public List<Customer> findAll(){
		return newAcc;
	}

	public Customer login(Customer customerLogin) {
		for (int i = 0; i <= newAcc.size(); i++) {
			Customer acc = newAcc.get(i);
			if (acc.getEmail().equalsIgnoreCase(customerLogin.getEmail())) {
				return acc;
			}
		}
		return null;
	}

	public Customer findByEmail(String email) {
		Customer user = newAcc.stream()
			  .filter(a -> email.equalsIgnoreCase(a.getEmail()))
			  .findAny()
			  .orElse(null);
		return user;
	}

}
