package com.example.ass.controller.user;

import com.example.ass.model.Cart;
import com.example.ass.model.MayTinh;
import com.example.ass.reqest.CartDetailRequest;
import com.example.ass.respone.CartDetailRespone;
import com.example.ass.service.ICartDetailService;
import com.example.ass.service.ICartService;
import com.example.ass.service.IMayTinhService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CartController {

    @Autowired
    private ICartService cartService;

    @Autowired
    private ICartDetailService cartDetailService;

    @Autowired
    private IMayTinhService mayTinhService;

    @Autowired
    private HttpSession session;


    @GetMapping("/gio-hang")
    public String gioHang(Model model) {
        Double totalPrice = 0.0;
        Long userId = Long.valueOf(session.getAttribute("userId").toString());
        model.addAttribute("listCart", cartDetailService.getCartUser(userId));
        for (CartDetailRespone res : cartDetailService.getCartUser(userId)) {
            totalPrice += Double.valueOf(res.getPrice().toString()) * res.getQuantity();
        }
        model.addAttribute("totalPrice", totalPrice == null ? 0 : totalPrice);
        return "/nguoiDung/cart";
    }

    @PostMapping("/add-cart")
    public String gioHang(@ModelAttribute("gioHang") CartDetailRequest request, RedirectAttributes ra) {
        Long userId = Long.valueOf(session.getAttribute("userId").toString());
        Cart cart = new Cart();
        cart.setUserCartId(userId);
        MayTinh mayTinh = new MayTinh();
        mayTinh.setId(request.getProductId());
        Integer idProduct = request.getProductId();

        if (request.getSl() > mayTinhService.getOne(request.getProductId()).get().getSl()) {
           ra.addFlashAttribute("isSl",true);
            return "redirect:/may-tinh/chi-tiet-SP/"+idProduct;
        }

        if (cartDetailService.findByUserAndProduct(userId, request.getProductId()) != null) {
            request.setId(cartDetailService.findByUserAndProduct(cart.getUserCartId(), request.getProductId()).getId());
            request.setProductId(request.getProductId());
            request.setCartId((cartDetailService.findByUserAndProduct(cart.getUserCartId(), request.getProductId()).getCartId()));
            request.setGiaBan(cartDetailService.findByUserAndProduct(cart.getUserCartId(), request.getProductId()).getGiaBan());
            request.setSl(cartDetailService.findByUserAndProduct(cart.getUserCartId(), request.getProductId()).getSl() + request.getSl());
            cartDetailService.save(request);
        } else {
//            cartDetail.setPrice(price);
//            cartDetail.setProduct(product);
//            cartDetail.setQuantity(quantity);
            cartService.save(cart);
            request.setCartId(cart.getId());
            cartDetailService.save(request);
        }
        return "redirect:/gio-hang";
    }

//    @GetMapping("/cart-detail/delete/{id}")
//    public String delete(@PathVariable("id") Integer id) {
//        CartDetailRespone cartDetail = cartDetailService.getCartDetail(id);
//        Integer cartId = cartDetail.getCartId();
//        cartDetailService.delete(id);
//        cartService.delete(cartId);
//        return "redirect:/gio-hang";
//    }
    @GetMapping("/cart-detail/delete/{id}")
    public String delete(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("count", cartDetailService.getCartUser(1L).size());
        CartDetailRespone cartDetail = cartDetailService.getCartDetail(id);
        System.out.println(cartDetail+"sdfghjesrdtfyguhj");
        Integer cartId = cartDetail.getCartId();
        cartDetailService.delete(id);
        cartService.delete(cartId);

        return "redirect:/gio-hang";
    }
}
