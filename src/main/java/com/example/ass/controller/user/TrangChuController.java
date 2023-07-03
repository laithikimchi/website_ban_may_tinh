package com.example.ass.controller.user;

import com.example.ass.service.ICartDetailService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TrangChuController {

    @Autowired
    private ICartDetailService cartDetailService;

    @Autowired
    HttpSession session;

    @GetMapping("/")
    public String index() {
        session.setAttribute("userId", "1");
        Long userId = Long.valueOf(session.getAttribute("userId").toString());
        session.setAttribute("count", cartDetailService.getCartUser(1L).size());
        return "index";
    }

}
