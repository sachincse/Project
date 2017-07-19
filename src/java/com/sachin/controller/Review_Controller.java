/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.controller;

import com.sachin.dao.AdminDao;
import com.sachin.model.Review;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Anu Singh
 */
@WebServlet(name = "Review_Controller", urlPatterns = {"/Review_Controller"})
public class Review_Controller extends HttpServlet {

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
            out.println("<title>Servlet Review_Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Review_Controller at " + request.getContextPath() + "</h1>");
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
        int id = Integer.parseInt(request.getParameter("id"));
         AdminDao dao = new AdminDao();
        List<Review> re = new ArrayList<Review>();
       
        double avgrate = dao.avgRating(id);
        dao.addAvgRating(avgrate, id);
        re = dao.getReview(id);
         HttpSession session = request.getSession();
         session.setAttribute("reviews", re);
         
        request.getSession().setAttribute("avgRating",avgrate);
         
         
        RequestDispatcher view = request.getRequestDispatcher("review.jsp");
        view.forward(request, response);
        
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
        String name = request.getParameter("rname");
        String email = request.getParameter("remail");
        String review = request.getParameter("review");
        double rating = Double.parseDouble(request.getParameter("rating"));
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        AdminDao dao = new AdminDao();
        List<Review> re = new ArrayList<Review>();
        dao.addReview(id, name, email, review, rating);
        double avgrate = dao.avgRating(id);
        dao.addAvgRating(avgrate, id);
        re = dao.getReview(id);
         HttpSession session1 = request.getSession();
         session1.setAttribute("reviews", re);
         
        request.getSession().setAttribute("avgRating",avgrate);
         
         
        RequestDispatcher view = request.getRequestDispatcher("review.jsp");
        view.forward(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
