package com.cg.mypaymentapp.repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.cg.mypaymentapp.beans.Customer;



public interface CustomerRepo extends JpaRepository<Customer, String>{
	@Query("SELECT c from Customer c")
	public List<Customer> getAllCustomers();
	
	@Query("SELECT c from Customer c WHERE c.wallet.balance<1000")
	public List<Customer> findAllWithInsufficientBal();
}
