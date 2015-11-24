/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginMVC.servlet;

import LoginMVC.modelo.BeanDetalleVenta;
import LoginMVC.modelo.BeanProducto;
import LoginMVC.modelo.Conexion;
import LoginMVC.modelo.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.util.digester.ArrayStack;

/**
 *
 * @author angel
 */
public class ConsultaProducto extends HttpServlet {

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
        String accion = request.getParameter("accion");
        if(accion.equals("anadirCarrito"))
            this.anadirCarrito(request,response);
    }

    private void anadirCarrito(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion=request.getSession();
        ArrayList<BeanDetalleVenta> carrito;
        
        if(sesion.getAttribute("carrito") == null){
            //response.sendRedirect("login.jsp");
            carrito = new ArrayList<BeanDetalleVenta>();
        } else
            carrito = (ArrayList<BeanDetalleVenta>)sesion.getAttribute("carrito");
        
        BeanProducto bprod = Consultas.mostrarProducto(Integer.parseInt(request.getParameter("cod")));
        BeanDetalleVenta bdetalle = new BeanDetalleVenta();
        bdetalle.setIdProducto(Integer.parseInt(request.getParameter("cod")));
        bdetalle.setBprod(bprod);
        bdetalle.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
        
        int indice=-1;
        for (int i = 0; i < carrito.size(); i++) {
            BeanDetalleVenta det = carrito.get(i);
            if(det.getIdProducto()==bprod.getId()){
                indice = i;
                break;
            }
        }
        
        if(indice == -1)
            carrito.add(bdetalle);
        else
            carrito.set(indice, bdetalle);
        
        sesion.setAttribute("carrito", carrito);
        response.sendRedirect("checkout.jsp");
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
