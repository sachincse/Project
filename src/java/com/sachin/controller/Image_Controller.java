/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.controller;

import com.sachin.dao.ImageDao;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Anu Singh
 */
@WebServlet(name = "Image_Controller", urlPatterns = {"/Image_Controller"})
public class Image_Controller extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Image_Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Image_Controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ImageDao dao = new ImageDao();
        String action = request.getParameter("action");
        if(action.equalsIgnoreCase("delete"));
        {
            String type = request.getParameter("type");
            int id = Integer.parseInt(request.getParameter("id"));
            String image = request.getParameter("name"); 
            if(type.equalsIgnoreCase("banner"))
            {
               
               dao.deleteBanner(id, image);
               List<String> images = new ArrayList<String>();
               images = dao.getBaanner(id);
               String im = images.get(0);
               dao.frontImage(id, im);
               request.getSession().setAttribute("images", images);
               RequestDispatcher view = request.getRequestDispatcher("image.jsp");
               view.forward(request, response);

            }
             if(type.equalsIgnoreCase("gallery"))
            {
               
               dao.deleteGallery(id, image);
               List<String> images = new ArrayList<String>();
               images = dao.getGallery(id);
               request.getSession().setAttribute("images", images);
               RequestDispatcher view = request.getRequestDispatcher("gallery.jsp");
               view.forward(request, response);

            }
       
            
        }
       
       
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id  =Integer.parseInt(request.getParameter("id"));
        String action = request.getParameter("action");
        ImageDao dao = new ImageDao();
        List<String> image = new ArrayList<String>();
        List<String> images = new ArrayList<String>();
        ServletFileUpload sf =new ServletFileUpload(new DiskFileItemFactory());
        try {
            
            List<FileItem> multifiles = sf.parseRequest(request);
            for(FileItem item:multifiles)
            {
                item.write(new File("C:\\Users\\Anu Singh\\Documents\\NetBeansProjects\\TCS_Internship\\web\\images\\"+item.getName()));
                image.add(item.getName());
           
            }
        } catch (FileUploadException ex) {
            Logger.getLogger(FileUpload.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(FileUpload.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(action.equalsIgnoreCase("banner"))
        {
            dao.addBanner(id, image); 
            images = dao.getBaanner(id);
            String im = images.get(0);
            dao.frontImage(id, im);
            request.getSession().setAttribute("images", images);
           // request.getSession().setAttribute("ID", id);
           try{
               Thread.sleep(3000);
           }catch(InterruptedException e){
               System.out.println(e);
           }
            RequestDispatcher view = request.getRequestDispatcher("image.jsp");
            view.forward(request, response);

        }
        else
        {
            dao.addGallery(id, image); 
            images = dao.getGallery(id);
            request.getSession().setAttribute("g_images", images);
                       try{
               Thread.sleep(3000);
           }catch(InterruptedException e){
               System.out.println(e);
           }
            RequestDispatcher view = request.getRequestDispatcher("gallery.jsp");
            view.forward(request, response);

        }

        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
