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
public class AllOrderResponse {
    private Integer orderId;

    private Long userId;

    private String productName;

    private String image;

    private Integer status;

    private Integer quantity;

    private BigDecimal price;
}
