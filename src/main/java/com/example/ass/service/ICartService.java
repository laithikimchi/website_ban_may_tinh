package com.example.ass.service;

import com.example.ass.model.Cart;

public interface ICartService {
    void save(Cart cart);

    void delete(Integer id);
}
