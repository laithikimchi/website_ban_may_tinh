package com.example.ass.service.impl;

import com.example.ass.model.MayTinh;
import com.example.ass.model.OrderDetail;
import com.example.ass.repository.IMayTinhRepository;
import com.example.ass.repository.OrderDetailRepository;
import com.example.ass.reqest.OrderRequest;
import com.example.ass.respone.AllOrderResponse;
import com.example.ass.service.IMayTinhService;
import com.example.ass.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
    @Autowired
    private OrderDetailRepository orderDetailRepository;


    @Autowired
    private IMayTinhRepository productRepository;

    @Override
    public void save(OrderDetail order) {
        orderDetailRepository.save(order);
    }

    @Override
    public MayTinh getProduct(Integer id) {
        return productRepository.findById(id).get();
    }

    @Override
    public void updateQuantity(Integer quantity, Integer id) {
        productRepository.updateQuantity(quantity, id);
    }

    @Override
    public List<OrderRequest> getHistory(Long id) {
        return orderDetailRepository.history(id);
    }

    @Override
    public Page<AllOrderResponse> getAllOrder(Integer pageNo, Integer pageSize) {
        return orderDetailRepository.getAllOrder(PageRequest.of(pageNo, pageSize));
    }

    @Override
    public void updateOrderStatus(Long id) {
        orderDetailRepository.updateOrderStatus(id);
    }

    @Override
    public void updateStatusDaNhan(Long id) {
        orderDetailRepository.updateOrderStatusDaNhan(id);
    }
}
