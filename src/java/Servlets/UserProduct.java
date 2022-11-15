/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

/**
 *
 * @author Adminstrator
 */
public class UserProduct {
    private int MaTP;
    private String TenTP;
    private Float GiaTP;
    private int SLCon;
    private String HinhAnh;
    private String DVT;
    private String MaLoai;
    
    public UserProduct(){
        
    }
    public UserProduct(int MaTP, String TenTP, Float GiaTP, int SLCon, String HinhAnh,String DVT,String MaLoai) {
        this.MaTP = MaTP;
        this.TenTP = TenTP;
        this.GiaTP = GiaTP;
        this.SLCon = SLCon;
        this.HinhAnh = HinhAnh;
        this.DVT=DVT;
        this.MaLoai=MaLoai;
    }
    public UserProduct(UserProduct product){
        this.MaTP = product.MaTP;
        this.TenTP = product.TenTP;
        this.GiaTP = product.GiaTP;
        this.SLCon = product.SLCon;
        this.HinhAnh = product.HinhAnh;
        this.DVT=product.DVT;
        this.MaLoai=product.MaLoai;
    }

    public int getMaTP() {
        return MaTP;
    }

    public void setMaTP(int MaTP) {
        this.MaTP = MaTP;
    }

    public String getTenTP() {
        return TenTP;
    }

    public void setTenTP(String TenTP) {
        this.TenTP = TenTP;
    }

    public Float getGiaTP() {
        return GiaTP;
    }

    public void setGiaTP(Float GiaTP) {
        this.GiaTP = GiaTP;
    }

    public int getSLCon() {
        return SLCon;
    }

    public void setSLCon(int SLCon) {
        this.SLCon = SLCon;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }

    public String getDVT() {
        return DVT;
    }

    public void setDVT(String DVT) {
        this.DVT = DVT;
    }

    public String getMaLoai() {
        return MaLoai;
    }

    public void setMaLoai(String MaLoai) {
        this.MaLoai = MaLoai;
    }
    
}
