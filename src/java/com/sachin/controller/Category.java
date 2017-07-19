
package com.sachin.controller;

import com.sachin.dao.AdminDao;
import com.sachin.dao.CategoryDao;
import com.sachin.model.Admin;
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

@WebServlet(name = "Category", urlPatterns = {"/Category"})
public class Category extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Category</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Category at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String location = request.getParameter("location");
        
       if(request.getSession().getAttribute("total")==null)
       {
           List<Integer> t = new ArrayList<Integer>();
           AdminDao dao = new AdminDao();
           t.add(dao.count("Resturants"));
           t.add(dao.count("Movies"));
           t.add(dao.count("Car Rent"));
           t.add(dao.count("House Rent"));
           t.add(dao.count("Doctor"));
           t.add(dao.count("Hotel"));
           t.add(dao.count("Banquet Hall"));
           t.add(dao.count("Personal Care"));
           HttpSession session = request.getSession();
           session.setAttribute("total", t);
           
           request.getSession().setAttribute("search", "all");
           
           RequestDispatcher view = request.getRequestDispatcher("main_index.jsp");
           view.forward(request, response);
           
           
           
       }
        
       else if(location.equalsIgnoreCase("all")){
       
       String category = request.getParameter("action");
       CategoryDao dao = new CategoryDao();
       List<Admin> list = dao.getlist(category);
       request.setAttribute("details", list);
       RequestDispatcher view = request.getRequestDispatcher("category.jsp");
       view.forward(request, response);
       
       }
       else{
       String category = request.getParameter("action");
       
       CategoryDao dao = new CategoryDao();
       List<Admin> list = dao.getdetails(category,location);
       request.setAttribute("details", list);
       RequestDispatcher view = request.getRequestDispatcher("category.jsp");
       view.forward(request, response);
       
           
       }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String search = request.getParameter("search");
         request.getSession().setAttribute("search", search);
         
         if(search.equalsIgnoreCase("all"))
         {
           List<Integer> t = new ArrayList<Integer>();
           AdminDao dao = new AdminDao();
           t.add(dao.count("Resturants"));
           t.add(dao.count("Movies"));
           t.add(dao.count("Car Rent"));
           t.add(dao.count("House Rent"));
           t.add(dao.count("Doctor"));
           t.add(dao.count("Hotel"));
           t.add(dao.count("Banquet Hall"));
           t.add(dao.count("Personal Care"));
           HttpSession session = request.getSession();
           session.setAttribute("total", t);
             
         }else
         {
           List<Integer> t = new ArrayList<Integer>();
           AdminDao dao = new AdminDao();
           t.add(dao.countwa("Resturants",search));
           t.add(dao.countwa("Movies",search));
           t.add(dao.countwa("Car Rent",search));
           t.add(dao.countwa("House Rent",search));
           t.add(dao.countwa("Doctor",search));
           t.add(dao.countwa("Hotel",search));
           t.add(dao.countwa("Banquet Hall",search));
           t.add(dao.countwa("Personal Care",search));
           HttpSession session = request.getSession();
           session.setAttribute("total", t);
         }
      
         
         
           
          RequestDispatcher view = request.getRequestDispatcher("main_index.jsp");
           view.forward(request, response);
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>      

}
