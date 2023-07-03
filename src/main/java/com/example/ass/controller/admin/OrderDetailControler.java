package com.example.ass.controller.admin;

import com.example.ass.model.MayTinh;
import com.example.ass.model.OrderDetail;
import com.example.ass.respone.AllOrderResponse;
import com.example.ass.service.OrderDetailService;
import com.example.ass.service.OrderService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class OrderDetailControler {
    @Autowired
    private OrderDetailService orderDetailService;
    @Autowired
    private OrderService orderService;

    @Autowired
    HttpSession session;

    @GetMapping("/order")
    public String order(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
        Page<AllOrderResponse> orderDetails = orderDetailService.getAllOrder(pageNo, 9);
        model.addAttribute("listAllOrder", orderDetails);
        return "/admin/order";
    }

    @GetMapping("/order/confirm/{id}")
    public String update(@PathVariable("id") Long id) {
        orderService.updateStatusConfirm(id);
        return "redirect:/admin/order";
    }
}
