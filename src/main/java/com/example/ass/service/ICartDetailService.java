package com.example.ass.service;

import com.example.ass.model.Cart;
import com.example.ass.model.CartDetail;
import com.example.ass.model.MayTinh;
import com.example.ass.reqest.CartDetailRequest;
import com.example.ass.respone.CartDetailRespone;

import java.util.List;

public interface ICartDetailService {
    void save(CartDetailRequest request);

    List<CartDetail> getAll();

    MayTinh getProduct(Integer id);

    Cart getCart(Integer id);

    List<CartDetailRespone> getCartUser(Long id);

    CartDetailRequest findByUserAndProduct(Long user, Integer product);

    CartDetailRespone getCartDetail(Integer id);

    void delete(Integer id);

    List<CartDetailRequest> getCartDetailRequest(Long id);

    void remove(Integer id);

}
