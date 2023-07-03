package com.example.ass.service;

import com.example.ass.model.Order;

public interface OrderService {
    void save(Order order);
    void updateStatusConfirm(Long id);
}
