package com.example.ass.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.math.BigDecimal;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@ToString
@Table(name = "MAYTINH")
public class MayTinh {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @NotBlank(message = "không được để trống")
    @Column(name = "TENSP")
    private String ten;

    @Column(name = "MAUSAC")
    private String mauSac;

    @Column(name = "CPU")
    private String cpu;

    @Column(name = "RAM")
    private String ram;

    @Column(name = "MOTA")
    private String moTa;

    @NotNull(message = "không được để trống")
    @Column(name = "SOLUONG")
    private Integer sl;

    @NotNull(message = "không được để trống")
    @Column(name = "GIABAN")
    private BigDecimal giaBan;

    @Column(name = "HINHANH")
    private String url;

    @OneToMany(mappedBy = "product")
    private List<OrderDetail> orderDetailList;

    @OneToMany(mappedBy = "product")
    private List<CartDetail> cartDetailList;

}
