package com.example.ass.service;

import com.example.ass.model.MayTinh;
import com.example.ass.model.OrderDetail;
import com.example.ass.reqest.OrderRequest;
import com.example.ass.respone.AllOrderResponse;
import org.springframework.data.domain.Page;

import java.util.List;

public interface OrderDetailService {
    void save(OrderDetail order);

    MayTinh getProduct(Integer id);

    void updateQuantity(Integer quantity, Integer id);

    List<OrderRequest> getHistory(Long id);
    Page<AllOrderResponse> getAllOrder(Integer pageNo, Integer pageSize);

    void updateOrderStatus(Long id);

    void updateStatusDaNhan(Long id);

}
