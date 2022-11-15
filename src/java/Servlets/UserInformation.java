/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.sql.Timestamp;

/**
 *
 * @author Adminstrator
 */
public class UserInformation {
    private String MaDatXe;
    private String SoDienThoai;
    private String DiemDon;
    private String DiemDen;
    private String SoKm;
    private String ThoiGian;
    private String ThanhTien;
    private String LoaiXe;
    private Timestamp NgayGioDat;
    public UserInformation(){
        
    }
    public UserInformation(String MaDatXe,String SoDienThoai,String DiemDon,String DiemDen,String SoKm,String ThoiGian,String ThanhTien,String LoaiXe,Timestamp NgayGioDat){
        this.MaDatXe=MaDatXe;
        this.SoDienThoai=SoDienThoai;
        this.DiemDon=DiemDon;
        this.DiemDen=DiemDen;
        this.SoKm=SoKm;
        this.ThoiGian=ThoiGian;
        this.ThanhTien=ThanhTien;
        this.LoaiXe=LoaiXe;
        this.NgayGioDat=NgayGioDat;
    }
    public UserInformation(UserInformation usi){
        this.MaDatXe=usi.MaDatXe;
        this.SoDienThoai=usi.SoDienThoai;
        this.DiemDon=usi.DiemDon;
        this.DiemDen=usi.DiemDen;
        this.SoKm=usi.SoKm;
        this.ThoiGian=usi.ThoiGian;
        this.ThanhTien=usi.ThanhTien;
        this.LoaiXe=usi.LoaiXe;
        this.NgayGioDat=usi.NgayGioDat;
    }

    /**
     * @return the MaDatXe
     */
    public String getMaDatXe() {
        return MaDatXe;
    }

    /**
     * @param MaDatXe the MaDatXe to set
     */
    public void setMaDatXe(String MaDatXe) {
        this.MaDatXe = MaDatXe;
    }
    

    /**
     * @return the DiemDon
     */
    public String getDiemDon() {
        return DiemDon;
    }

    /**
     * @param DiemDon the DiemDon to set
     */
    public void setDiemDon(String DiemDon) {
        this.DiemDon = DiemDon;
    }

    /**
     * @return the DiemDen
     */
    public String getDiemDen() {
        return DiemDen;
    }

    /**
     * @param DiemDen the DiemDen to set
     */
    public void setDiemDen(String DiemDen) {
        this.DiemDen = DiemDen;
    }

    /**
     * @return the SoKm
     */
    public String getSoKm() {
        return SoKm;
    }

    /**
     * @param SoKm the SoKm to set
     */
    public void setSoKm(String SoKm) {
        this.SoKm = SoKm;
    }

    /**
     * @return the ThoiGian
     */
    public String getThoiGian() {
        return ThoiGian;
    }

    /**
     * @param ThoiGian the ThoiGian to set
     */
    public void setThoiGian(String ThoiGian) {
        this.ThoiGian = ThoiGian;
    }

    /**
     * @return the ThanhTien
     */
    public String getThanhTien() {
        return ThanhTien;
    }

    /**
     * @param ThanhTien the ThanhTien to set
     */
    public void setThanhTien(String ThanhTien) {
        this.ThanhTien = ThanhTien;
    }

    /**
     * @return the LoaiXe
     */
    public String getLoaiXe() {
        return LoaiXe;
    }

    /**
     * @param LoaiXe the LoaiXe to set
     */
    public void setLoaiXe(String LoaiXe) {
        this.LoaiXe = LoaiXe;
    }

    /**
     * @return the NgayGioDat
     */
    public Timestamp getNgayGioDat() {
        return NgayGioDat;
    }

    /**
     * @param NgayGioDat the NgayGioDat to set
     */
    public void setNgayGioDat(Timestamp NgayGioDat) {
        this.NgayGioDat = NgayGioDat;
    }

    /**
     * @return the SoDienThoai
     */
    public String getSoDienThoai() {
        return SoDienThoai;
    }

    /**
     * @param SoDienThoai the SoDienThoai to set
     */
    public void setSoDienThoai(String SoDienThoai) {
        this.SoDienThoai = SoDienThoai;
    }

    
    
}
