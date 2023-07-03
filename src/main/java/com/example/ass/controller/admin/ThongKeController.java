package com.example.ass.controller.admin;

import com.example.ass.repository.OrderDetailRepository;
import com.example.ass.reqest.MayTinhThongKe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin/thongke")
public class ThongKeController {
    @Autowired
    private OrderDetailRepository repository;

    @GetMapping("")
    public String thongKeTop10(Model model){
        Pageable pageable = PageRequest.of(0,10);
        List<String> labelTop10 = new ArrayList<>();
        List<Long> valueTop10 = new ArrayList<>();
        for (MayTinhThongKe x: repository.thongKeTop10(pageable).getContent()) {
            labelTop10.add(x.getMayTinh().getTen());
            valueTop10.add(x.getSl());
        }
        model.addAttribute("list",repository.sanPhamTon(pageable).getContent());
        model.addAttribute("valueTop10", valueTop10);
        model.addAttribute("labelTop10", labelTop10);
//        model.addAttribute("list",repository.thongKeTop10(pageable).getContent());
        return ("/admin/thongKe");
    }


}
