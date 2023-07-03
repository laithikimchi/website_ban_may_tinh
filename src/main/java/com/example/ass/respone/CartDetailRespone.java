package com.example.ass.respone;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CartDetailRespone {

    private Integer id;

    private String productUrl;

    private String productTen;

    private Integer quantity;

    private BigDecimal price;

    private Integer cartId;

}
