package com.example.ass.service;

import com.example.ass.model.MayTinh;
import com.example.ass.reqest.FilterMT;
import com.example.ass.reqest.SearchMayTinh;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

public interface IMayTinhService {
    List<MayTinh> getAllMT();

    Optional<MayTinh> getOne(Integer id);

    void saveOrUpdate(MayTinh mt);

    void detele(Integer id);

    Page<MayTinh> phanTrang(Integer pageNo, Integer size);

    //    Page<MayTinh> searchTen(String tenSP, Pageable pageable);
    Page<MayTinh> search(SearchMayTinh request, Integer pageNo, Integer size);

    Page<MayTinh> filter(FilterMT request, Integer pageNo, Integer size);

    Page<MayTinh> searchTen(String ten, Integer pageNo, Integer size);

//    Page<MayTinh> searchGia(BigDecimal min,BigDecimal max, Pageable pageable);
}
