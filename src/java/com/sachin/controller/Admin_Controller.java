/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.controller;

import com.sachin.dao.AdminDao;
import com.sachin.model.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class Admin_Controller extends HttpServlet {

    
   private static final long serialVersionUID = 1L;
    private AdminDao dao;
    
    public Admin_Controller(){
        super();
        dao = new AdminDao();
        
    }

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
        String action = request.getParameter("action");
        if(action.equalsIgnoreCase("edit")){
           int id = Integer.parseInt(request.getParameter("admin_id"));
           Admin admin = dao.getUser(id);
         //  request.setAttribute("admin", admin);
            request.getSession().setAttribute("admin",admin);
            RequestDispatcher view = request.getRequestDispatcher("admin_signup.jsp");
            view.forward(request, response);
        }
        else if(action.equalsIgnoreCase("delete"))
        {
            AdminDao dao = new AdminDao();
            int id = Integer.parseInt(request.getParameter("id"));
            Admin admin = dao.getUser(id);
            
            String email = admin.getEmail();
            String pass = admin.getPassword();
           
            dao.deletePost(id);
            dao.delete_table(id);
            List<Admin> admins= dao.login(email, pass);
            request.setAttribute("admins", admins);
            request.getSession().setAttribute("user","admin");
         //   request.getSession().setAttribute("name",admins.get(0).getName());
            
           RequestDispatcher view = request.getRequestDispatcher("dashpre.jsp");
           view.forward(request, response);
        }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         Admin d = new Admin();
         Admin admin = new Admin();
        String action = request.getParameter("action");
        
        d.setName(request.getParameter("name"));
        d.setMobile((request.getParameter("phone")));
        d.setEmail(request.getParameter("email"));
        d.setPassword(request.getParameter("password"));
        d.setAddress(request.getParameter("address"));
        d.setCEmail(request.getParameter("cemail"));
        d.setCMobile((request.getParameter("cphone")));
        d.setCName(request.getParameter("cname"));
        d.setCategory(request.getParameter("category"));
        d.setCity(request.getParameter("city"));
        d.setP(request.getParameter("p"));
        d.setState(request.getParameter("state"));
        d.setT(request.getParameter("t"));
        d.setWebsite(request.getParameter("website"));
        d.setzip(Integer.parseInt(request.getParameter("zip")));
        d.setRange(request.getParameter("rupess"));
        d.setRate(request.getParameter("filter_range"));
        
        if(action.equalsIgnoreCase("update"))
        {
            int ID = Integer.parseInt(request.getParameter("Id"));
            d.setId(ID);
            dao.updateAdmin(d);
           // request.setAttribute("admin", d);
            request.getSession().setAttribute("admin",d);
        }
        else{
         admin =  dao.add(d);
         dao.review(admin.getId());
       //  request.setAttribute("admin", admin);
         HttpSession session = request.getSession();
         session.setAttribute("admin", admin);
         
          request.getSession().setAttribute("user","admin");
          request.getSession().setAttribute("name",admin.getName());
         
       //  request.getSession().setAttribute("admin",admin);
    }
      //  RequestDispatcher view = request.getRequestDispatcher("image.jsp?action=banner");
        RequestDispatcher view = request.getRequestDispatcher("image.jsp");
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
