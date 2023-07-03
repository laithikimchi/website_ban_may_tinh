package com.example.ass.reqest;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CartDetailRequest {
    private Integer id;

    private Integer cartId;

    private Integer productId;

    private Integer sl;

    private BigDecimal giaBan;
}
