package com.umazone.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.umazone.ecommerce.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

    Customer findByEmail(String email);
}
