package com.example.demo.service;



import com.example.demo.repository.Repository;

import java.util.List;

@org.springframework.stereotype.Service
public class ProductService {
    private final Repository repository;

    public ProductService(Repository repository) {
        this.repository = repository;
    }

    public List<String> getProducts(String name) {
        return repository.getProductName(name);
    }
}
