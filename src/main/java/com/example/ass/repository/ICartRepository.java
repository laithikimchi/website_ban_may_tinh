package com.example.ass.repository;

import com.example.ass.model.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ICartRepository extends JpaRepository<Cart,Integer> {
    @Query("SELECT c FROM Cart c JOIN c.customer cus " +
            "WHERE cus.id = ?1")
    Cart findByCustomerId(Long id);
}
