/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.controller;

import com.sachin.dao.CategoryDao;
import com.sachin.model.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sachin Singh
 */
@WebServlet(name = "FilterController", urlPatterns = {"/FilterController"})
public class FilterController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FilterController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FilterController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String select1 = request.getParameter("category");
        String select2 = request.getParameter("range");
        String select3 = request.getParameter("other");
        CategoryDao dao = new CategoryDao();
        
        List<Admin> list = dao.filter(select1, select2, select3);
        request.setAttribute("details", list);
        RequestDispatcher view = request.getRequestDispatcher("category.jsp");
        view.forward(request, response);

        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
