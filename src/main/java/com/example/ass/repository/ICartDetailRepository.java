package com.example.ass.repository;

import com.example.ass.model.CartDetail;
import com.example.ass.reqest.CartDetailRequest;
import com.example.ass.respone.CartDetailRespone;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ICartDetailRepository extends JpaRepository<CartDetail, Integer> {
    @Query("SELECT new com.example.ass.respone.CartDetailRespone(cd.id,p.url,p.ten,cd.quantity,cd.price,c.id) FROM CartDetail cd " +
            "JOIN cd.cart c " +
            "JOIN cd.product p " +
            "WHERE c.UserCartId = ?1")
    List<CartDetailRespone> getUserId(Long id);

    @Query("SELECT new com.example.ass.reqest.CartDetailRequest(cd.id,c.id,p.id,cd.quantity,cd.price) FROM CartDetail cd " +
            "JOIN cd.cart c " +
            "JOIN cd.product p " +
            "WHERE c.UserCartId = ?1 AND cd.product.id = ?2")
    CartDetailRequest findByUserAndProduct(Long user, Integer product);

    @Query("SELECT new com.example.ass.respone.CartDetailRespone(cd.id,p.url,p.ten,cd.quantity,cd.price,c.id) FROM CartDetail cd " +
            "JOIN cd.cart c " +
            "JOIN cd.product p " +
            "WHERE cd.id = ?1")
    CartDetailRespone findId(Integer id);

    @Query("SELECT new com.example.ass.reqest.CartDetailRequest(cd.id,c.id,p.id,cd.quantity,cd.price) FROM CartDetail cd " +
            "JOIN cd.cart c " +
            "JOIN cd.product p " +
            "WHERE c.UserCartId = ?1")
    List<CartDetailRequest> getCartDetailRequest(Long id);
}
