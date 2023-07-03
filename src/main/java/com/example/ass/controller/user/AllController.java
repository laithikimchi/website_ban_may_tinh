package com.example.ass.controller.user;

import com.example.ass.service.IMayTinhService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/tat-ca-sp")
public class AllController {
    @Autowired
    private IMayTinhService productService;

    @Autowired
    HttpSession session;

    @GetMapping("")
    public String getAll(Model model, @RequestParam(value = "page", defaultValue = "0") Integer pageNo) {
        model.addAttribute("listProduct", productService.phanTrang(pageNo, 8));
        return "/nguoiDung/sanPham";
    }
}
