/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class DBUtils {

    public static void insertUserAccount(Connection conn, UserAccount user) throws SQLException {
        String sql = "insert into taikhoan(SoDienThoai,MatKhau) values (?,?)";
        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, user.getSoDienThoai());
        pstm.setString(2, user.getMatKhau());

        pstm.executeUpdate();
    }

    public static UserAccount findUser(Connection conn, String SoDienThoai, String MatKhau) throws SQLException {
        String sql = "select*from taikhoan where SoDienThoai=? and MatKhau=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, SoDienThoai);
        pstm.setString(2, MatKhau);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            UserAccount user = new UserAccount();
            user.setSoDienThoai(rs.getString("SoDienThoai"));
            user.setMatKhau(rs.getString("MatKhau"));
            return user;
        }
        return null;
    }

    public static List<UserInformation> selectUserInformation(Connection conn, String SoDienThoai) throws SQLException {
        String sql = "select i.MaDatXe,i.SoDienThoai,i.DiemDon,i.DiemDen,i.SoKm,i.ThoiGian,i.ThanhTien,i.LoaiXe,i.NgayGioDat from thongtindatxe i join taikhoan t\n"
                + "where t.SoDienThoai = i.SoDienThoai and i.SoDienThoai=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, SoDienThoai);
        ResultSet rs = pstm.executeQuery();
        List<UserInformation> list = new ArrayList<UserInformation>();
        while (rs.next()) {
            String MaDatXe = rs.getString("MaDatXe");
            SoDienThoai = rs.getString("SoDienThoai");
            String DiemDon = rs.getString("DiemDon");
            String DiemDen = rs.getString("DiemDen");
            String SoKm = rs.getString("SoKm");
            String ThoiGian = rs.getString("ThoiGian");
            String ThanhTien = rs.getString("ThanhTien");
            String LoaiXe = rs.getString("LoaiXe");
            Timestamp NgayGioDat = rs.getTimestamp("NgayGioDat");
            UserInformation userInformation = new UserInformation();
            userInformation.setMaDatXe(MaDatXe);
            userInformation.setSoDienThoai(SoDienThoai);
            userInformation.setDiemDon(DiemDon);
            userInformation.setDiemDen(DiemDen);
            userInformation.setSoKm(SoKm);
            userInformation.setThoiGian(ThoiGian);
            userInformation.setThanhTien(ThanhTien);
            userInformation.setLoaiXe(LoaiXe);
            userInformation.setNgayGioDat(NgayGioDat);
            list.add(userInformation);
        }
        return list;
    }

    public static void insertUserInformation(Connection conn, UserInformation usi) throws SQLException {
        String sql = "insert into thongtindatxe(SoDienThoai,DiemDon,DiemDen,SoKm,ThoiGian,ThanhTien,LoaiXe) values (?,?,?,?,?,?,?)";
        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, usi.getSoDienThoai());
        pstm.setString(2, usi.getDiemDon());
        pstm.setString(3, usi.getDiemDen());
        pstm.setString(4, usi.getSoKm());
        pstm.setString(5, usi.getThoiGian());
        pstm.setString(6, usi.getThanhTien());
        pstm.setString(7, usi.getLoaiXe());

        pstm.executeUpdate();
    }

    public static void deleteUserInformation(Connection conn, String MaDatXe) throws SQLException {
        String sql = "delete from thongtindatxe where MaDatXe = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaDatXe);
        pstm.executeUpdate();

    }

    public static List<UserInformation> searchUserInformation(Connection conn, String DiemDen) throws SQLException {
        String sql = "SELECT * FROM thongtindatxe where DiemDen like '%" + DiemDen + "%'";
        PreparedStatement pstm = conn.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<UserInformation> list = new ArrayList<UserInformation>();
        while (rs.next()) {
            String MaDatXe = rs.getString("MaDatXe");
            String SoDienThoai = rs.getString("SoDienThoai");
            String DiemDon = rs.getString("DiemDon");
            DiemDen = rs.getString("DiemDen");
            String SoKm = rs.getString("SoKm");
            String ThoiGian = rs.getString("ThoiGian");
            String ThanhTien = rs.getString("ThanhTien");
            String LoaiXe = rs.getString("LoaiXe");
            Timestamp NgayGioDat = rs.getTimestamp("NgayGioDat");
            UserInformation userInformation = new UserInformation();
            userInformation.setMaDatXe(MaDatXe);
            userInformation.setSoDienThoai(SoDienThoai);
            userInformation.setDiemDon(DiemDon);
            userInformation.setDiemDen(DiemDen);
            userInformation.setSoKm(SoKm);
            userInformation.setThoiGian(ThoiGian);
            userInformation.setThanhTien(ThanhTien);
            userInformation.setLoaiXe(LoaiXe);
            userInformation.setNgayGioDat(NgayGioDat);
            list.add(userInformation);
        }

        return list;

    }

    public static List<UserPerson> selectUserPersons(Connection conn, String SoDienThoai) throws SQLException {
        String sql = "select k.SoDienThoai,k.Ten,k.NgayThangNamSinh,k.Email,k.HinhAnh from taikhoan t join khachhang k "
                + "where t.SoDienThoai = k.SoDienThoai and k.SoDienThoai=?  ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, SoDienThoai);
        ResultSet rs = pstm.executeQuery();
        List<UserPerson> list = new ArrayList<UserPerson>();
        while (rs.next()) {
            SoDienThoai = rs.getString("SoDienThoai");
            String Ten = rs.getString("Ten");
            String NgayThangNamSinh = rs.getString("NgayThangNamSinh");
            String Email = rs.getString("Email");
            String HinhAnh = rs.getString("HinhAnh");
            UserPerson userperson = new UserPerson();
            userperson.setSoDienThoai(SoDienThoai);
            userperson.setTen(Ten);
            userperson.setNgayThangNamSinh(NgayThangNamSinh);
            userperson.setEmail(Email);
            userperson.setHinhAnh(HinhAnh);
            list.add(userperson);
        }
        return list;
    }

    public static UserPerson getUserPerson(Connection conn, String SoDienThoai) throws SQLException {
        String sql = "select*from khachhang where SoDienThoai=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, SoDienThoai);
        ResultSet rs = pstm.executeQuery();
        UserPerson usp = new UserPerson();
        while (rs.next()) {
            usp.setSoDienThoai(rs.getString("SoDienThoai"));
            usp.setTen(rs.getString("Ten"));
            usp.setNgayThangNamSinh(rs.getString("NgayThangNamSinh"));
            usp.setEmail(rs.getString("Email"));
            usp.setHinhAnh(rs.getString("HinhAnh"));
        }
        return usp;
    }

    public static void updateUserPerson(Connection conn, String SoDienThoai, String Ten, String NgayThangNamSinh, String Email, String HinhAnh) throws SQLException {
        String sql = "update khachhang set Ten=?, NgayThangNamSinh=?, Email=?, HinhAnh=? where SoDienThoai=? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Ten);
        pstm.setString(2, NgayThangNamSinh);
        pstm.setString(3, Email);
        pstm.setString(4, HinhAnh);
        pstm.setString(5, SoDienThoai);
        pstm.executeUpdate();
    }

    public static void insertUserPerson(Connection conn, String SoDienThoai, String Ten, String NgayThangNamSinh, String Email, String HinhAnh) throws SQLException {
        String sql = "INSERT INTO `dichvudatxe`.`khachhang` (`SoDienThoai`, `Ten`, `NgayThangNamSinh`, `Email`, `HinhAnh`) VALUES (?,?,?,?,?);";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, SoDienThoai);
        pstm.setString(2, Ten);
        pstm.setString(3, NgayThangNamSinh);
        pstm.setString(4, Email);
        pstm.setString(5, HinhAnh);

        pstm.executeUpdate();
    }

    public static List<UserProduct> selectUserProduct(Connection conn) throws SQLException {
        String sql = "select MaTP,TenTP,GiaTP,SLCon,HinhAnh,DVT,MaLoai from thucpham";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<UserProduct> list = new ArrayList<UserProduct>();
        while (rs.next()) {
            int MaTP = rs.getInt("MaTP");
            String TenTP = rs.getString("TenTP");
            Float GiaTP = rs.getFloat("GiaTP");
            int SLCon = rs.getInt("SLCon");
            String HinhAnh = rs.getString("HinhAnh");
            String DVT = rs.getString("DVT");
            String MaLoai = rs.getString("MaLoai");
            UserProduct product = new UserProduct();
            product.setMaTP(MaTP);
            product.setTenTP(TenTP);
            product.setGiaTP(GiaTP);
            product.setSLCon(SLCon);
            product.setHinhAnh(HinhAnh);
            product.setDVT(DVT);
            product.setMaLoai(MaLoai);
            list.add(product);
        }
        return list;
    }

    public static List<UserType> selectType(Connection conn) throws SQLException {
        String sql = "select MaLoai,TenLoai from theloai";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<UserType> list = new ArrayList<UserType>();
        while (rs.next()) {
            int MaLoai = rs.getInt("MaLoai");
            String TenLoai = rs.getString("TenLoai");
            UserType ust = new UserType();
            ust.setMaLoai(MaLoai);
            ust.setTenLoai(TenLoai);
            list.add(ust);
        }
        return list;
    }

    public static List<UserProduct> getUserProductByMaLoai(Connection conn, String MaLoai) throws SQLException {
        String sql = "select*from thucpham where MaLoai=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaLoai);
        ResultSet rs = pstm.executeQuery();
        List<UserProduct> list = new ArrayList<UserProduct>();
        while (rs.next()) {
            int MaTP = rs.getInt("MaTP");
            String TenTP = rs.getString("TenTP");
            Float GiaTP = rs.getFloat("GiaTP");
            int SLCon = rs.getInt("SLCon");
            String HinhAnh = rs.getString("HinhAnh");
            String DVT = rs.getString("DVT");
            MaLoai = rs.getString("MaLoai");
            UserProduct ml = new UserProduct();
            ml.setMaLoai(MaLoai);
            ml.setMaTP(MaTP);
            ml.setTenTP(TenTP);
            ml.setGiaTP(GiaTP);
            ml.setSLCon(SLCon);
            ml.setHinhAnh(HinhAnh);
            ml.setDVT(DVT);
            list.add(ml);
        }
        return list;
    }

    public static List<UserProduct> LastProduct(Connection conn) throws SQLException {
        String sql = "select MaTP,TenTP,GiaTP,SLCon,HinhAnh,DVT,MaLoai from thucpham order by MaTP desc limit 5";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<UserProduct> list = new ArrayList<UserProduct>();
        while (rs.next()) {
            int MaTP = rs.getInt("MaTP");
            String TenTP = rs.getString("TenTP");
            Float GiaTP = rs.getFloat("GiaTP");
            int SLCon = rs.getInt("SLCon");
            String HinhAnh = rs.getString("HinhAnh");
            String DVT = rs.getString("DVT");
            String MaLoai = rs.getString("MaLoai");
            UserProduct product = new UserProduct();
            product.setMaTP(MaTP);
            product.setTenTP(TenTP);
            product.setGiaTP(GiaTP);
            product.setSLCon(SLCon);
            product.setHinhAnh(HinhAnh);
            product.setDVT(DVT);
            product.setMaLoai(MaLoai);
            list.add(product);
        }
        return list;
    }

    public static void DeleteProduct(Connection conn, String MaTP) throws SQLException {
        String sql = "delete from thucpham where MaTP = ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaTP);
        pstm.executeUpdate();
    }

    public static List<UserProduct> SearchProduct(Connection conn, String TenTP) throws SQLException {
        String sql = "select* from thucpham where TenTP like '%" + TenTP + "%'";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<UserProduct> list = new ArrayList<UserProduct>();
        while (rs.next()) {
            int MaTP = rs.getInt("MaTP");
            TenTP = rs.getString("TenTP");
            Float GiaTP = rs.getFloat("GiaTP");
            int SLCon = rs.getInt("SLCon");
            String HinhAnh = rs.getString("HinhAnh");
            String DVT = rs.getString("DVT");
            String MaLoai = rs.getString("MaLoai");
            UserProduct product = new UserProduct();
            product.setMaTP(MaTP);
            product.setTenTP(TenTP);
            product.setGiaTP(GiaTP);
            product.setSLCon(SLCon);
            product.setHinhAnh(HinhAnh);
            product.setDVT(DVT);
            product.setMaLoai(MaLoai);
            list.add(product);
        }
        return list;
    }

    public static void insertProduct(Connection conn, String TenTP, String GiaTP, String SLCon, String HinhAnh, String DVT, String MaLoai) throws SQLException {
        String sql = "insert into thucpham(TenTP,GiaTP,SLCon,HinhAnh,DVT,MaLoai) VALUES (?,?,?,?,?,?);";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, TenTP);
        pstm.setString(2, GiaTP);
        pstm.setString(3, SLCon);
        pstm.setString(4, HinhAnh);
        pstm.setString(5, DVT);
        pstm.setString(6, MaLoai);

        pstm.executeUpdate();
    }

    public static UserProduct getProductByMaTP(Connection conn, String MaTP) throws SQLException {
        String sql = "select*from thucpham where MaTP=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaTP);
        ResultSet rs = pstm.executeQuery();
        UserProduct up = new UserProduct();
        while (rs.next()) {
            up.setMaTP(rs.getInt("MaTP"));
            up.setTenTP(rs.getString("TenTP"));
            up.setGiaTP(rs.getFloat("GiaTP"));
            up.setSLCon(rs.getInt("SLCon"));
            up.setHinhAnh(rs.getString("HinhAnh"));
            up.setDVT(rs.getString("DVT"));
            up.setMaLoai(rs.getString("MaLoai"));
        }
        return up;
    }
    public static void updateProduct(Connection conn,String MaTP,String TenTP,String GiaTP, String SLCon, String HinhAnh, String DVT,String MaLoai) throws SQLException {
        String sql = " UPDATE `dichvudatxe`.`thucpham` SET `TenTP` = ?, `GiaTP` = ?, `SLCon` = ?, `HinhAnh` = ?, `DVT` = ?, `MaLoai` = ? WHERE (`MaTP` = ?); ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, TenTP);
        pstm.setString(2, GiaTP);
        pstm.setString(3, SLCon);
        pstm.setString(4, HinhAnh);
        pstm.setString(5, DVT);
        pstm.setString(6, MaLoai);
        pstm.setString(7, MaTP);
        pstm.executeUpdate();
    }
}
