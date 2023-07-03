package com.example.ass.service.impl;

import com.example.ass.model.Order;
import com.example.ass.repository.OrderRepository;
import com.example.ass.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderRepository orderRepository;

    @Override
    public void save(Order order) {
        orderRepository.save(order);
    }

    @Override
    public void updateStatusConfirm(Long id) {
        orderRepository.updateOrderStatusConfirm(id);
    }
}
