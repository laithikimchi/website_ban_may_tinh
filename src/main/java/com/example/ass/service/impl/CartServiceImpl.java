package com.example.ass.service.impl;

import com.example.ass.model.Cart;
import com.example.ass.repository.ICartRepository;
import com.example.ass.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements ICartService {
    @Autowired
    private ICartRepository repository;

    @Override
    public void save(Cart cart) {
        repository.save(cart);
    }

    @Override
    public void delete(Integer id) {
        repository.deleteById(id);
    }
}
