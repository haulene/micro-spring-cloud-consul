package com.haulene.example.microspringcloudconsul.customerservice.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.haulene.example.microspringcloudconsul.customerservice.model.Account;

import java.util.List;

@FeignClient(name = "account-service")
public interface AccountClient {

	@GetMapping("/customer/{customerId}")
	List<Account> findByCustomer(@PathVariable("customerId") Long customerId);
	
}
