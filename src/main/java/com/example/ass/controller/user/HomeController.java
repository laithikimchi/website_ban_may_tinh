package com.example.ass.controller.user;


import com.example.ass.model.MayTinh;
import com.example.ass.reqest.SearchMayTinh;
import com.example.ass.service.IMayTinhService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/may-tinh")
public class HomeController {

    @Autowired
    private IMayTinhService productService;

    @Autowired
    HttpSession session;

    @GetMapping("")
    public String getAll(Model model) {
        model.addAttribute("listProduct", productService.getAllMT());
        return "index";
    }

    @GetMapping("/search")
    public String search(Model model, @RequestParam("ten") String ten,
                         @RequestParam(defaultValue = "0", name = "page") Integer page) {
//        model.addAttribute("check", 1);
        model.addAttribute("listProduct", productService.searchTen(ten, page, 8));
        System.out.println(ten);
        model.addAttribute("ten", ten);
        model.addAttribute("isCheck", true);
//        request.getAttribute("mayTinhPage");
        return "/nguoiDung/sanPham";
    }
}
