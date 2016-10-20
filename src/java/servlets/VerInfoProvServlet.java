/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Logica.Dt_prov;
import Logica.Dt_servicio;
import Logica.Proveedor;
import Logica.Sistema;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.HashMap;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

/**
 *
 * @author santiago
 */
public class VerInfoProvServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet VerInfoProvServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet VerInfoProvServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
              String proveedor=request.getParameter("proveedor");
              HttpSession sesion= request.getSession();
              Sistema sis=new Sistema();
              Dt_prov prov=sis.VerInfoProv(proveedor);
              HashMap<String,Dt_servicio>dtservicios=sis.getDtServicios();
              HashMap<String,String>servicios=new HashMap();
              for(String key : dtservicios.keySet()){
                servicios.put(key, key);
              }
              ImageIcon icon=prov.getImagen();
              boolean hayimagen=false;
              sesion.setAttribute("servicios",servicios);
              sesion.setAttribute("nickname",prov.getNickname());
              sesion.setAttribute("nombre",prov.getNombre());
              sesion.setAttribute("apellido",prov.getApellido());
              sesion.setAttribute("email",prov.getEmail());
              sesion.setAttribute("nom_emp",prov.getNom_empresa());
              sesion.setAttribute("link",prov.getLink());
              if(icon!=null){
                hayimagen=true;
                Image img=icon.getImage();
                BufferedImage bimage = new BufferedImage(img.getWidth(null), img.getHeight(null), BufferedImage.TYPE_4BYTE_ABGR);//TYPE_INT_ARGB 
                Graphics2D bGr = bimage.createGraphics();
                bGr.drawImage(img, 0, 0, null);
                bGr.dispose();
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                ImageIO.write(bimage,"png", baos);
                byte[] imagen =baos.toByteArray();
                String urlimagen = "data:image/png;base64," + Base64.getEncoder().encodeToString(imagen);
                sesion.setAttribute("urlimagen",urlimagen);
              }
              sesion.setAttribute("hayimagen",hayimagen);
              response.sendRedirect("MostrarDatosProv.jsp");
              
        } finally {
            out.close();
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
        Sistema sis=new Sistema();
        HashMap<String,Dt_prov> proveedores=sis.getProveedores();
        HashMap<String,String> provs=new HashMap();
        for(String key : proveedores.keySet()){
            provs.put(key, key);
        }
        HttpSession sesion= request.getSession();
        sesion.setAttribute("provs",provs);
        response.sendRedirect("VerInfoProv.jsp");
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
