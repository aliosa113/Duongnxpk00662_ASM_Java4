package com.javaweb.model;
// Generated Oct 31, 2016 5:44:34 PM by Hibernate Tools 4.3.1



/**
 * Chitietgiaodich generated by hbm2java
 */
public class Chitietgiaodich  implements java.io.Serializable {


     private Integer idChiTietGiaoDich;
     private int maGiaoDich;
     private int idSanPham;
     private int soLuong;
     private long donGia;
     private long thanhTien;
     private Boolean trangThai;
     private String ghiChu;

    public Chitietgiaodich() {
    }

	
    public Chitietgiaodich(int maGiaoDich, int idSanPham, int soLuong, long donGia, long thanhTien) {
        this.maGiaoDich = maGiaoDich;
        this.idSanPham = idSanPham;
        this.soLuong = soLuong;
        this.donGia = donGia;
        this.thanhTien = thanhTien;
    }
    public Chitietgiaodich(int maGiaoDich, int idSanPham, int soLuong, long donGia, long thanhTien, Boolean trangThai, String ghiChu) {
       this.maGiaoDich = maGiaoDich;
       this.idSanPham = idSanPham;
       this.soLuong = soLuong;
       this.donGia = donGia;
       this.thanhTien = thanhTien;
       this.trangThai = trangThai;
       this.ghiChu = ghiChu;
    }
   
    public Integer getIdChiTietGiaoDich() {
        return this.idChiTietGiaoDich;
    }
    
    public void setIdChiTietGiaoDich(Integer idChiTietGiaoDich) {
        this.idChiTietGiaoDich = idChiTietGiaoDich;
    }
    public int getMaGiaoDich() {
        return this.maGiaoDich;
    }
    
    public void setMaGiaoDich(int maGiaoDich) {
        this.maGiaoDich = maGiaoDich;
    }
    public int getIdSanPham() {
        return this.idSanPham;
    }
    
    public void setIdSanPham(int idSanPham) {
        this.idSanPham = idSanPham;
    }
    public int getSoLuong() {
        return this.soLuong;
    }
    
    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }
    public long getDonGia() {
        return this.donGia;
    }
    
    public void setDonGia(long donGia) {
        this.donGia = donGia;
    }
    public long getThanhTien() {
        return this.thanhTien;
    }
    
    public void setThanhTien(long thanhTien) {
        this.thanhTien = thanhTien;
    }
    public Boolean getTrangThai() {
        return this.trangThai;
    }
    
    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }
    public String getGhiChu() {
        return this.ghiChu;
    }
    
    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }




}

