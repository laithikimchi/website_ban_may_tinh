package com.example.ass.controller.user;

import com.example.ass.model.Order;
import com.example.ass.model.OrderDetail;
import com.example.ass.reqest.CartDetailRequest;
import com.example.ass.respone.CartDetailRespone;
import com.example.ass.service.ICartDetailService;
import com.example.ass.service.ICartService;
import com.example.ass.service.IMayTinhService;
import com.example.ass.service.OrderDetailService;
import com.example.ass.service.OrderService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    HttpSession session;

    @Autowired
    private ICartDetailService cartDetailService;

    @Autowired
    private ICartService cartService;

    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private IMayTinhService productSrevice;

    @Autowired
    private OrderService orderService;


    @GetMapping("")
    public String order(Model model) {
        Double totalPrice = 0.0;
        Long userId = Long.valueOf(session.getAttribute("userId").toString());
        model.addAttribute("listCart", cartDetailService.getCartUser(userId));
        for (CartDetailRespone res : cartDetailService.getCartUser(userId)) {
            totalPrice += Double.valueOf(res.getPrice().stripTrailingZeros().toString()) * res.getQuantity();
        }

        if (cartDetailService.getCartUser(userId) == null) {
            return "redirect:/giong-hang";
        }
        model.addAttribute("totalPrice", totalPrice == null ? 0 : totalPrice);
        return "/nguoiDung/buy-product";
    }

    @PostMapping("/save")
    public String saveOrder(@RequestParam("recipientName") String recipientName,
                            @RequestParam("phoneAddress") String phoneAddress,
                            @RequestParam("recipientName") String shippingAddress
    ) {
        Long userId = Long.valueOf(session.getAttribute("userId").toString());
        Order order = Order.builder()
                .recipientName(recipientName)
                .phoneAddress(phoneAddress)
                .shippingAddress(shippingAddress)
                .userId(userId)
                .orderDate(new Date())
                .orderStatus(1)
                .build();
        orderService.save(order);

        List<CartDetailRequest> cartItems = cartDetailService.getCartDetailRequest(userId);
        System.out.println(userId);
        for (CartDetailRequest req : cartItems) {
            OrderDetail orderDetail = OrderDetail.builder()
                    .product(orderDetailService.getProduct(req.getProductId()))
                    .price(req.getGiaBan())
                    .quantity(req.getSl())
                    .order(order)
                    .build();
            orderDetailService.save(orderDetail);
            orderDetailService.updateQuantity(productSrevice.getOne(req.getProductId()).get().getSl() - req.getSl(),
                    req.getProductId());
            cartDetailService.delete(req.getId());
            cartService.delete(req.getCartId());
        }
        return "redirect:/user/history";
    }

}
