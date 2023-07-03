package com.example.ass.reqest;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter

public class CartReqest {

    private Integer id;

    private String userId;

    private Long customerId;
}
