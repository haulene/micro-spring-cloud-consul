package com.haulene.example.microspringcloudconsul.orderservice.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import com.haulene.example.microspringcloudconsul.orderservice.model.Product;

import java.util.List;

@FeignClient(name = "product-service")
public interface ProductClient {

	@PostMapping("/ids")
	List<Product> findByIds(List<Long> ids);
	
}
