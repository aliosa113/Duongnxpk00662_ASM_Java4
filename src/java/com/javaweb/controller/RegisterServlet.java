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
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String email, username, password, repassword, fullname;
        request.setCharacterEncoding("UTF-8");
        email = request.getParameter("email");
        fullname = request.getParameter("fullname");
        username = request.getParameter("username");
        password = request.getParameter("pwd");
        repassword = request.getParameter("repwd");

        HttpSession session = request.getSession();
        if (!password.equals(repassword)) {
            session.setAttribute("errormsg", "Mật khẩu không trùng khớp!");
            String url = "/Register.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        } else {

            try {
                EnDeCryption encryption = new EnDeCryption("duongnguyen");
                String passmahoa = encryption.encoding(password);
                //Khi kiem tra tat ca cac thong tin ok thi tao User moi voi cac thong tin tren
                Users user = new Users(username, passmahoa, email, fullname);

                //Viet ham them User vao database
                UserService userservice = new UserService();
                userservice.InsertUser(user);
                String url = "/index.jsp";
                getServletContext().getRequestDispatcher(url).forward(request, response);
            } catch (InvalidKeyException ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
