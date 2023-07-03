package com.example.ass.controller.user;

import com.example.ass.reqest.OrderRequest;
import com.example.ass.service.OrderDetailService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HistoryController {
    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    HttpSession session;

    @GetMapping("/user/history")
    public String history(Model model) {
        Double totalPrice = 0.0;
        Long userId = Long.valueOf(session.getAttribute("userId").toString());
        System.out.println("hahahahaha" + userId);
        model.addAttribute("history", orderDetailService.getHistory(userId));
        for (OrderRequest req : orderDetailService.getHistory(userId)) {
            if (req.getStatus() == 1 || req.getStatus() == 2) {
                totalPrice += Double.valueOf(req.getPrice().stripTrailingZeros().toString()) * req.getQuantity();
            }
        }
        model.addAttribute("a", totalPrice);
        return "/nguoiDung/history";
    }

    @GetMapping("/user/cancel/{id}")
    public String cancelOder(@PathVariable("id") Long id) {
        orderDetailService.updateOrderStatus(id);
        return "redirect:/user/history";
    }

    @GetMapping("/user/confirm/{id}")
    public String confirm(@PathVariable("id") Long id) {
        orderDetailService.updateStatusDaNhan(id);
        return "redirect:/user/history";
    }

}
