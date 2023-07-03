package com.example.ass.repository;

import com.example.ass.model.MayTinh;
import com.example.ass.model.OrderDetail;
import com.example.ass.reqest.MayTinhThongKe;
import com.example.ass.reqest.OrderRequest;
import com.example.ass.respone.AllOrderResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
    @Query("SELECT new com.example.ass.reqest.OrderRequest(o.id,p.ten,p.url,o.orderStatus,od.quantity,od.price)" +
            " FROM OrderDetail od JOIN od.order o JOIN od.product p" +
            " WHERE o.userId =?1 ")
    List<OrderRequest> history(Long id);

    @Modifying
    @Transactional
    @Query("UPDATE Order o set o.orderStatus = 3 WHERE o.id = ?1")
    void updateOrderStatus(Long id);

    @Query("SELECT new com.example.ass.reqest.MayTinhThongKe(o.product,SUM(o.quantity)) " +
            "FROM OrderDetail o GROUP BY o.product ORDER BY SUM(o.quantity) DESC")
    Page<MayTinhThongKe> thongKeTop10(Pageable pageable);
    @Query("SELECT m  FROM MayTinh m WHERE m NOT IN (SELECT o.product FROM OrderDetail o)")
    Page<MayTinh> sanPhamTon(Pageable pageable);

    @Query("UPDATE Order o SET o.orderStatus = 3, o.payDate = current_date WHERE o.id=?1")
    void updateOrderStatusDaNhan(Long id);

    @Query("SELECT new com.example.ass.respone.AllOrderResponse(o.id,o.userId,p.ten,p.url,o.orderStatus,od.quantity,od.price)" +
            " FROM OrderDetail od JOIN od.order o JOIN od.product p" +
            " ORDER BY o.orderStatus desc")
    Page<AllOrderResponse> getAllOrder(Pageable pageable);
}
