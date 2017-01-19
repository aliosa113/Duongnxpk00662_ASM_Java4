/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.controller;

import com.javaweb.model.Users;
import com.javaweb.service.EnDeCryption;
import com.javaweb.service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.InvalidKeyException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DuongNguyen
 */
public class EditUserServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, InvalidKeyException {
        response.setContentType("text/html;charset=UTF-8");

        String Username, Password, RetypePassword, Email, Fullname, idUser;
        Username = request.getParameter("username");
        Email = request.getParameter("email");
        Password = request.getParameter("pwd");
        RetypePassword = request.getParameter("repwd");
        Fullname = request.getParameter("fullname");
        idUser = request.getParameter("idTaiKhoan");

        EnDeCryption encryption = new EnDeCryption("duongnguyen");
        String passmahoa = encryption.encoding(Password);
        UserService tk = new UserService();
        Users us = tk.GetUserById(idUser);
        us.setUsername(Username);
        us.setPassword(passmahoa);
        us.setEmail(Email);
        us.setFullname(Fullname);
        

        HttpSession session = request.getSession();
        if (!Password.equals(RetypePassword)) {
            session.setAttribute("errormsg", "Mat khau khong khop");
            String urls = "/SuaTaiKhoan.jsp";
            getServletContext().getRequestDispatcher(urls).forward(request, response);
        } else {
                tk.InsertUser(us);
                String url = "/TaiKhoan.jsp";
                getServletContext().getRequestDispatcher(url).forward(request, response);
        }

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditUserServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditUserServlet at " + request.getContextPath() + "</h1>");
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
        try {
            processRequest(request, response);
        } catch (InvalidKeyException ex) {
            Logger.getLogger(EditUserServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (InvalidKeyException ex) {
            Logger.getLogger(EditUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
