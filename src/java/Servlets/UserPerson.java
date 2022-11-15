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
public class UserPerson {
    private String MaKH;
    private String SoDienThoai;
    private String Ten;
    private String NgayThangNamSinh;
    private String Email;
    private String HinhAnh;
    public UserPerson(){
        
    }
    public UserPerson(String MaKH,String SoDienThoai,String Ten,String NgayThangNamSinh,String Email,String HinhAnh){
        this.MaKH=MaKH;
        this.SoDienThoai=SoDienThoai;
        this.Ten=Ten;
        this.NgayThangNamSinh=NgayThangNamSinh;
        this.Email=Email;
        this.HinhAnh=HinhAnh;
    }
    public UserPerson(UserPerson usp){
        this.MaKH=usp.MaKH;
        this.SoDienThoai=usp.SoDienThoai;
        this.Ten=usp.Ten;
        this.NgayThangNamSinh=usp.NgayThangNamSinh;
        this.Email=usp.Email;
        this.HinhAnh=usp.HinhAnh;
    }

    /**
     * @return the MaKH
     */
    public String getMaKH() {
        return MaKH;
    }

    /**
     * @param MaKH the MaKH to set
     */
    public void setMaKH(String MaKH) {
        this.MaKH = MaKH;
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
     * @return the Ten
     */
    public String getTen() {
        return Ten;
    }

    /**
     * @param Ten the Ten to set
     */
    public void setTen(String Ten) {
        this.Ten = Ten;
    }

    /**
     * @return the NgayThangNamSinh
     */
    public String getNgayThangNamSinh() {
        return NgayThangNamSinh;
    }

    /**
     * @param NgayThangNamSinh the NgayThangNamSinh to set
     */
    public void setNgayThangNamSinh(String NgayThangNamSinh) {
        this.NgayThangNamSinh = NgayThangNamSinh;
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     * @return the HinhAnh
     */
    public String getHinhAnh() {
        return HinhAnh;
    }

    /**
     * @param HinhAnh the HinhAnh to set
     */
    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }
    
}
