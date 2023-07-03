package com.example.ass.repository;

import com.example.ass.model.MayTinh;
import com.example.ass.reqest.SearchMayTinh;
import jakarta.transaction.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface IMayTinhRepository extends JpaRepository<MayTinh, Integer> {
//    Page<MayTinh> findByTenContains(String tenSP, Pageable pageable);
//    Page<MayTinh> findByGiaBanBetween(BigDecimal min ,BigDecimal max,Pageable pageable);

    @Query("SELECT m FROM MayTinh m WHERE m.ten LIKE %?1% AND (?2 <= m.giaBan AND m.giaBan <= ?3)")
    Page<MayTinh> searchByNameOrMinToMax(String name, BigDecimal min, BigDecimal max,Pageable pageable);

    @Query("SELECT m FROM MayTinh m WHERE m.ten LIKE %?1% AND m.mauSac LIKE %?2% AND m.ram LIKE %?3% AND m.cpu LIKE %?4% " +
            " ORDER BY m.giaBan ASC ")
    Page<MayTinh> ftMayTinhASC(String ten,String mauSac, String ram, String cpu,Pageable pageable);

    @Query("SELECT m FROM MayTinh m WHERE m.ten LIKE %?1% AND m.mauSac LIKE %?2% AND m.ram LIKE %?3% AND m.cpu LIKE %?4% " +
            " ORDER BY m.giaBan DESC ")
    Page<MayTinh> ftMayTinhDESC(String ten,String mauSac, String ram, String cpu,Pageable pageable);

    @Modifying
    @Transactional
    @Query("UPDATE MayTinh u SET u.sl = ?1 WHERE u.id = ?2")
    void updateQuantity(Integer quantity, Integer userId);
    @Query("SELECT m FROM MayTinh m WHERE m.ten LIKE %?1% ")
    Page<MayTinh> searchByName(String name,Pageable pageable);
}
