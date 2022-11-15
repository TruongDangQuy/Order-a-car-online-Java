/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Adminstrator
 */
@WebServlet(name = "InsertInformationServlet", urlPatterns = {"/InsertInformationServlet"})
public class InsertInformationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InsertInformationServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InsertInformationServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
       Connection conn = null;
        try {
            conn = MySQLConntUtils.getMySQLConnection();
            HttpSession sess=request.getSession();
            UserAccount ua = (UserAccount) sess.getAttribute("acc");
            
            String SoDienThoai=request.getParameter("phone");
            String DiemDon = request.getParameter("location1");
            String DiemDen = request.getParameter("location2");
            String SoKm = request.getParameter("distance");
            String ThoiGian = request.getParameter("duration");
            String ThanhTien = request.getParameter("totalFare");
            String LoaiXe=request.getParameter("type");
            
            

            UserInformation usi = new UserInformation();
            usi.setSoDienThoai(SoDienThoai);
            usi.setDiemDon(DiemDon);
            usi.setDiemDen(DiemDen);
            usi.setSoKm(SoKm);
            usi.setThoiGian(ThoiGian);
            usi.setThanhTien(ThanhTien);
            usi.setLoaiXe(LoaiXe);
            DBUtils.insertUserInformation(conn, usi);
            response.sendRedirect("/Success.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(InsertInformationServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(InsertInformationServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(SignInServlet.class.getName()).log(Level.SEVERE,
                            null, ex);
                }
            }

        }
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
