package com.umazone.ecommerce.dto;

import lombok.Data;

import java.util.Set;

import com.umazone.ecommerce.entity.Address;
import com.umazone.ecommerce.entity.Customer;
import com.umazone.ecommerce.entity.Order;
import com.umazone.ecommerce.entity.OrderItem;

@Data
public class Purchase {

    private Customer customer;

    private Address shippingAddress;

    private Address billingAddress;

    private Order order;

    private Set<OrderItem> orderItems;
}
