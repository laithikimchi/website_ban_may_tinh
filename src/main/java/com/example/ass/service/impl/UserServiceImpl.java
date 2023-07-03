//package com.example.ass.service.impl;
//
//import com.example.ass.model.NguoiDung;
//import com.example.ass.repository.INguoiDungRepository;
//import com.example.ass.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.stereotype.Service;
//
//@Service
//public class UserServiceImpl implements UserService {
//    @Autowired
//    private INguoiDungRepository repository;
//    @Autowired
//    private BCryptPasswordEncoder passwordEncode;
//    @Override
//    public NguoiDung createUser(NguoiDung user) {
//        user.setPassword(passwordEncode.encode(user.getPassword()));
//        user.setRole("ROLE_USER");
//        return repository.save(user);
//    }
//
//    @Override
//    public boolean checkEmail(String email) {
//        return repository.existsByEmail(email);
//    }
//}
