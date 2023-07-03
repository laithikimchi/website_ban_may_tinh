package com.example.ass.repository;

import com.example.ass.model.NguoiDung;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface INguoiDungRepository extends JpaRepository<NguoiDung, Integer> {
    NguoiDung findByAccountAndPassword(String account, String password);

    NguoiDung findByEmail(String email);


}
