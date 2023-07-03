package com.example.ass.repository;

import com.example.ass.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface OrderRepository extends JpaRepository<Order,Integer> {
    @Modifying
    @Transactional
    @Query("UPDATE Order o set o.orderStatus = 2 WHERE o.id = ?1")
    void updateOrderStatusConfirm(Long id);
}
