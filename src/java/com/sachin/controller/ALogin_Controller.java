
package com.sachin.controller;

import com.sachin.dao.AdminDao;
import com.sachin.dao.ImageDao;
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


@WebServlet(name = "ALogin_Controller", urlPatterns = {"/ALogin_Controller"})
public class ALogin_Controller extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ALogin_Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ALogin_Controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("action"));
        AdminDao dao = new AdminDao();
        ImageDao idao = new ImageDao();
        List<String> image = idao.getBaanner(id);
        List<String> gim = idao.getGallery(id);
        Admin admin = dao.getUser(id);
        request.setAttribute("images",image);
        request.setAttribute("g_images", gim);
        request.setAttribute("admin", admin);
        RequestDispatcher view = request.getRequestDispatcher("dashboard.jsp");
        view.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        AdminDao dao = new AdminDao();
        List<Admin> admin= dao.login(email, pass);
        if(admin.isEmpty())
        {
             PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User or password incorrect');");
                out.println("location='index.jsp';");
                out.println("</script>");

        }
        else
        {
            request.setAttribute("admins", admin);
            request.getSession().setAttribute("user","admin");
            request.getSession().setAttribute("name",admin.get(0).getName());
            
           RequestDispatcher view = request.getRequestDispatcher("dashpre.jsp");
           view.forward(request, response);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
