package com.example.ass.reqest;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class SearchMayTinh {

    private Integer page;

    private String tenSP;

    private BigDecimal min;

    private BigDecimal max;

}
