/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Logica.Dt_prov;
import Logica.Dt_servicio;
import Logica.Fecha;
import Logica.IntoReserva;
import Logica.Reserva;
import Logica.Sistema;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author santiago
 */
public class AgregarServicioServlet extends HttpServlet {

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
//            out.println("<title>Servlet AgregarServicioServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet AgregarServicioServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
              String servicio=request.getParameter("servicio");
              int cantidad=request.getIntHeader("cantidad");
              Date fechaini=(Date)request.getAttribute("fechaini");
              Date fechafin=(Date)request.getAttribute("fechafin");
              Sistema sis=new Sistema();
              
              Reserva res=(Reserva)request.getSession().getAttribute("reserva");
              Fecha fecha_ini=new Fecha(fechaini.getDay(),fechaini.getMonth(),fechaini.getYear());
              Fecha fecha_fin=new Fecha(fechafin.getDay(),fechafin.getMonth(),fechafin.getYear());
              IntoReserva into_res=new IntoReserva(cantidad,fecha_ini,fecha_fin);
              res.setSer_prom(into_res);
              request.getSession().setAttribute("reserva",res);
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
        HashMap<String,Dt_servicio> services=sis.getDtServicios();
        HashMap<String,String> servicios=new HashMap();
        for(String key : services.keySet()){
            servicios.put(key, key);
        }
        if(servicios.isEmpty())
            System.out.print("holaa");
        HttpSession sesion= request.getSession();
        sesion.setAttribute("servicios",servicios);
        response.sendRedirect("AgregarServicio.jsp");
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
