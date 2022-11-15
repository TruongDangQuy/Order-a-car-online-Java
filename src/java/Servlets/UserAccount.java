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
 public class UserAccount {
     private String MaTK;
    private String SoDienThoai;
    private String MatKhau;

     
     public UserAccount(){
         
     }
     public UserAccount( String MaTK,String SoDienThoai, String MatKhau){
        this.MaTK=MaTK;
        this.SoDienThoai = SoDienThoai;
        this.MatKhau=MatKhau;
     }
     public UserAccount( String SoDienThoai, String MatKhau){
        
        this.SoDienThoai = SoDienThoai;
        this.MatKhau=MatKhau;
     }
     public UserAccount(UserAccount ust){
         this.MaTK = ust.MaTK;
        this.SoDienThoai = ust.SoDienThoai;
        this.MatKhau = ust.MatKhau;
     }

    /**
     * @return the MaTK
     */
    public String getMaTK() {
        return MaTK;
    }

    /**
     * @param MaTK the MaTK to set
     */
    public void setMaTK(String MaTK) {
        this.MaTK = MaTK;
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

    /**
     * @return the MatKhau
     */
    public String getMatKhau() {
        return MatKhau;
    }

    /**
     * @param MatKhau the MatKhau to set
     */
    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }

    
    
 }
