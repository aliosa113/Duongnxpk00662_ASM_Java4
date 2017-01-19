package com.javaweb.model;
// Generated Oct 31, 2016 5:44:34 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Sanpham generated by hbm2java
 */
public class Sanpham  implements java.io.Serializable {


     private Integer idsanpham;
     private String tensanpham;
     private int idloaisanpham;
     private long giasanpham;
     private Date ngaydang;
     private String hinhanh;
     private String mota;

    public Sanpham() {
    }

	
    public Sanpham(String tensanpham, int idloaisanpham, long giasanpham, Date ngaydang, String mota) {
        this.tensanpham = tensanpham;
        this.idloaisanpham = idloaisanpham;
        this.giasanpham = giasanpham;
        this.ngaydang = ngaydang;
        this.mota = mota;
    }
    public Sanpham(String tensanpham, int idloaisanpham, long giasanpham, Date ngaydang, String hinhanh, String mota) {
       this.tensanpham = tensanpham;
       this.idloaisanpham = idloaisanpham;
       this.giasanpham = giasanpham;
       this.ngaydang = ngaydang;
       this.hinhanh = hinhanh;
       this.mota = mota;
    }
   
    public Integer getIdsanpham() {
        return this.idsanpham;
    }
    
    public void setIdsanpham(Integer idsanpham) {
        this.idsanpham = idsanpham;
    }
    public String getTensanpham() {
        return this.tensanpham;
    }
    
    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }
    public int getIdloaisanpham() {
        return this.idloaisanpham;
    }
    
    public void setIdloaisanpham(int idloaisanpham) {
        this.idloaisanpham = idloaisanpham;
    }
    public long getGiasanpham() {
        return this.giasanpham;
    }
    
    public void setGiasanpham(long giasanpham) {
        this.giasanpham = giasanpham;
    }
    public Date getNgaydang() {
        return this.ngaydang;
    }
    
    public void setNgaydang(Date ngaydang) {
        this.ngaydang = ngaydang;
    }
    public String getHinhanh() {
        return this.hinhanh;
    }
    
    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }
    public String getMota() {
        return this.mota;
    }
    
    public void setMota(String mota) {
        this.mota = mota;
    }




}


