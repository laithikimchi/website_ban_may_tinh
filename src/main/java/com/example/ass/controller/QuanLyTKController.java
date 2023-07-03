package com.example.ass.controller;

import com.example.ass.model.NguoiDung;
import com.example.ass.repository.INguoiDungRepository;
import com.example.ass.service.MailService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.UUID;

@Controller

public class QuanLyTKController {
    @Autowired
    private INguoiDungRepository repository;
    @Autowired
    HttpSession session;
    @Autowired
    private MailService mailService;

    @ModelAttribute("nguoiDung")
    private NguoiDung getNguoiDung() {
        return new NguoiDung();
    }

    @GetMapping("/login")
    public String viewLogin(Model model) {
        return ("/taiKhoan/dangNhap");
    }

    @PostMapping("/login")
    public String login(@RequestParam("account") String account, @RequestParam("password") String password) {
        NguoiDung nguoiDung = repository.findByAccountAndPassword(account, password);
        if (nguoiDung != null) {
            session.setAttribute("nguoiDung", nguoiDung);
            return "redirect:/may-tinh";
        } else {
            return "redirect:/login";
        }
    }

    @GetMapping("/logout")
    public String logout() {
        session.removeAttribute("nguoiDung");
        return "redirect:/";
    }

    @GetMapping("/dang-ky")
    public String viewDK(Model model) {
        return ("/taiKhoan/dangKy");
    }

    @PostMapping("/dang-ky")
    public String dangKy(@ModelAttribute("nguoiDung") NguoiDung nguoiDung) {
        repository.save(nguoiDung);
        return "redirect:/login";
    }

    @GetMapping("/doi-mk")
    public String viewDMK(Model model) {
        return ("/taiKhoan/doiMK");
    }
    @PostMapping("/doi-mk")
    public String doiMK(@RequestParam("email") String email){
        String randomPassword = UUID.randomUUID().toString().substring(0, 6);
        NguoiDung users = repository.findByEmail(email);
        if (users != null) {
            users.setPassword(randomPassword);
            repository.save(users);
            mailService.sendEmail(email, "Mật khẩu cùa bạn đã được đặt lại!",
                    "Xin chào, mật khẩu mới của bạn là: " + randomPassword);
        }
        return "redirect:/login";
    }
    @PostMapping("/may-tinh")
    public String updateTK(@ModelAttribute NguoiDung nguoiDung){
        repository.save(nguoiDung);
        return ("redirect:/");
    }
}
