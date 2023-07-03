package com.example.ass.controller.user;

import com.example.ass.reqest.CartDetailRequest;
import com.example.ass.service.IMayTinhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/may-tinh/chi-tiet-SP")
public class DetailSanPham {
    @Autowired
    private IMayTinhService service;

    @RequestMapping("/{id}")
    public String detail(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("gioHang", new CartDetailRequest());
        model.addAttribute("detail", service.getOne(id).orElse(null));
        return "/nguoiDung/chiTietSp";
    }

}
