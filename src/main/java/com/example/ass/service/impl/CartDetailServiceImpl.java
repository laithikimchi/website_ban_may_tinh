package com.example.ass.service.impl;

import com.example.ass.model.Cart;
import com.example.ass.model.CartDetail;
import com.example.ass.model.MayTinh;
import com.example.ass.repository.ICartDetailRepository;
import com.example.ass.repository.ICartRepository;
import com.example.ass.repository.IMayTinhRepository;
import com.example.ass.reqest.CartDetailRequest;
import com.example.ass.respone.CartDetailRespone;
import com.example.ass.service.ICartDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartDetailServiceImpl implements ICartDetailService {
    @Autowired
    private ICartDetailRepository cartDetailRepository;
    @Autowired
    private IMayTinhRepository mayTinhRepository;
    @Autowired
    private ICartRepository iCartRepository;

    @Override
    public void save(CartDetailRequest request) {
        CartDetail cartDetail = CartDetail.builder()
                .id(request.getId())
                .price(request.getGiaBan())
                .cart(iCartRepository.findById(request.getCartId()).get())
                .product(mayTinhRepository.findById(request.getProductId()).get())
                .quantity(request.getSl())
                .build();
        cartDetailRepository.save(cartDetail);
    }

    @Override
    public List<CartDetail> getAll() {
        return cartDetailRepository.findAll();
    }

    @Override
    public MayTinh getProduct(Integer id) {
        return mayTinhRepository.findById(id).get();
    }

    @Override
    public Cart getCart(Integer id) {
        return iCartRepository.findById(id).get();
    }

    @Override
    public List<CartDetailRespone> getCartUser(Long id) {
        return cartDetailRepository.getUserId(id);
    }

    @Override
    public CartDetailRequest findByUserAndProduct(Long user, Integer product) {
        return cartDetailRepository.findByUserAndProduct(user, product);
    }

    @Override
    public CartDetailRespone getCartDetail(Integer id) {
        return cartDetailRepository.findId(id);
    }

    @Override
    public void delete(Integer id) {
        cartDetailRepository.deleteById(id);
    }

    @Override
    public List<CartDetailRequest> getCartDetailRequest(Long id) {
        return cartDetailRepository.getCartDetailRequest(id);
    }

    @Override
    public void remove(Integer id) {
        cartDetailRepository.deleteById(id);
    }


}

