/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.controller;

import com.sachin.dao.UserDao;
import com.sachin.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sachin Singh
 */
public class SignUpController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao dao;
    
    public SignUpController(){
        super();
        dao = new UserDao();
        
    }

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
        String action = request.getParameter("logout");
        if(action.equalsIgnoreCase("logout"))
        {
            request.getSession().invalidate();
             RequestDispatcher view = request.getRequestDispatcher("index.jsp");
             view.forward(request, response);

        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User d = new User();
        d.setName(request.getParameter("name"));
        d.setMobile(request.getParameter("phone"));
        d.setEmail(request.getParameter("email"));
        d.setPassword(request.getParameter("password"));
        d.setAnswer(request.getParameter("answer"));
        d.setQuestion(request.getParameter("question"));
        
        dao.add(d);
        
         
        
         request.setAttribute("userdetails", d);
         request.getSession().setAttribute("user","user");
         request.getSession().setAttribute("name",d.getName());
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
  
        view.forward(request, response);
        
        
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
