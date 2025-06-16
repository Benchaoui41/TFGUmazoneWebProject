package com.umazone.ecommerce.controller;

import com.stripe.exception.StripeException;
import com.umazone.ecommerce.dto.PaymentInfo;
import com.umazone.ecommerce.dto.Purchase;
import com.umazone.ecommerce.dto.PurchaseResponse;
import com.umazone.ecommerce.service.CheckoutService;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/checkout")
public class CheckoutController {

    private CheckoutService checkoutService;

    public CheckoutController(CheckoutService checkoutService) {
        this.checkoutService = checkoutService;
    }

    @PostMapping("/purchase")
    public PurchaseResponse placeOrder(@RequestBody Purchase purchase) {

        return checkoutService.placeOrder(purchase);
    }

    @PostMapping("/payment-intent")
    public ResponseEntity<String> createPaymentIntent(@RequestBody PaymentInfo paymentInfo) throws StripeException {

        var paymentIntent = checkoutService.createPaymentIntent(paymentInfo);
        var paymentStr = paymentIntent.toJson();

        return new ResponseEntity<>(paymentStr, HttpStatus.OK);
    }
}

