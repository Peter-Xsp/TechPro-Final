package com.techpro.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techpro.project.entity.Product;

public interface ProductRepository extends JpaRepository <Product,Integer> {
    
    
}
