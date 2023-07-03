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
public class ProductRequest {

    private Integer id;

    private String ten;

    private String mauSac;

    private String cpu;

    private String ram;

    private String moTa;

    private Integer sl;

    private BigDecimal giaBan;

    private String url;

}
