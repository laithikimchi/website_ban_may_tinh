//package com.example.ass.config;
//
//import com.example.ass.model.NguoiDung;
//import com.example.ass.repository.INguoiDungRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//@Service
//public class UserDetailsServiceImpl implements UserDetailsService {
//
//    @Autowired
//    private INguoiDungRepository userRepo;
//
//    @Override
//    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
//
//        NguoiDung user = userRepo.findByEmail(email);
//
//        if (user != null) {
//            return new CustomUserDetails(user);
//        }
//
//        throw new UsernameNotFoundException("user not available");
//    }
//
//}
