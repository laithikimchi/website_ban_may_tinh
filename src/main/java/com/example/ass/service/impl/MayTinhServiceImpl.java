package com.example.ass.service.impl;

import com.example.ass.model.MayTinh;
import com.example.ass.repository.IMayTinhRepository;
import com.example.ass.reqest.FilterMT;
import com.example.ass.reqest.SearchMayTinh;
import com.example.ass.service.IMayTinhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@Service
public class MayTinhServiceImpl implements IMayTinhService {
    @Autowired
    private IMayTinhRepository repository;

    @Override
    public List<MayTinh> getAllMT() {
        return repository.findAll();
    }

    @Override
    public Optional<MayTinh> getOne(Integer id) {
        return repository.findById(id);
    }

    @Override
    public void saveOrUpdate(MayTinh mt) {
        repository.save(mt);
    }

    @Override
    public void detele(Integer id) {
        repository.deleteById(id);
    }

//    @Override
//    public Page<MayTinh> searchTen(String tenSP, Pageable pageable) {
//        return repository.findByTenContains(tenSP, pageable);
//    }

    @Override
    public Page<MayTinh> search(SearchMayTinh request,Integer pageNo, Integer size) {
        Pageable page = PageRequest.of(pageNo,size);
        BigDecimal minPrice = request.getMin();
        BigDecimal maxPrice = request.getMax();
        String name = request.getTenSP();
        if (name.trim().length() == 0) {
            name = "";
        }

        if (minPrice == null) {
            minPrice = BigDecimal.ZERO;
        }
        if (maxPrice == null) {
            maxPrice = BigDecimal.valueOf(999999999);
        }
        return repository.searchByNameOrMinToMax(name, minPrice, maxPrice,page);
    }

    @Override
    public Page<MayTinh> filter(FilterMT request,Integer pageNo, Integer size) {
        Pageable page = PageRequest.of(pageNo,size);
        if (request.getGiaBan().equals("DESC")){
            return repository.ftMayTinhDESC(request.getTenSP(),request.getMauSac(),request.getRam(),request.getCpu(),page);
        }else {
            return repository.ftMayTinhASC(request.getTenSP(),request.getMauSac(),request.getRam(),request.getCpu(),page);
        }

    }

    @Override
    public Page<MayTinh> searchTen(String ten, Integer pageNo, Integer size) {
        Pageable page = PageRequest.of(pageNo,size);
        return repository.searchByName(ten,page);
    }


    @Override
    public Page<MayTinh> phanTrang(Integer pageNo, Integer size) {
        Pageable pageable = PageRequest.of(pageNo, size);
        return repository.findAll(pageable);
    }
}
