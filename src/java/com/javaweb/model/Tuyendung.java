package com.javaweb.model;
// Generated Oct 31, 2016 5:44:34 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Tuyendung generated by hbm2java
 */
public class Tuyendung  implements java.io.Serializable {


     private Integer idtuyendung;
     private String vitrituyendung;
     private String noilamviec;
     private Date hantuyendung;

    public Tuyendung() {
    }

    public Tuyendung(String vitrituyendung, String noilamviec, Date hantuyendung) {
       this.vitrituyendung = vitrituyendung;
       this.noilamviec = noilamviec;
       this.hantuyendung = hantuyendung;
    }
   
    public Integer getIdtuyendung() {
        return this.idtuyendung;
    }
    
    public void setIdtuyendung(Integer idtuyendung) {
        this.idtuyendung = idtuyendung;
    }
    public String getVitrituyendung() {
        return this.vitrituyendung;
    }
    
    public void setVitrituyendung(String vitrituyendung) {
        this.vitrituyendung = vitrituyendung;
    }
    public String getNoilamviec() {
        return this.noilamviec;
    }
    
    public void setNoilamviec(String noilamviec) {
        this.noilamviec = noilamviec;
    }
    public Date getHantuyendung() {
        return this.hantuyendung;
    }
    
    public void setHantuyendung(Date hantuyendung) {
        this.hantuyendung = hantuyendung;
    }




}

