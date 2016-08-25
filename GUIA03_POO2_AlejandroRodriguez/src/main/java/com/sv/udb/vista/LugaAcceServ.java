/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.vista;

import com.sv.udb.controlador.LugaAcceCtrl;
import com.sv.udb.modelo.LugaAcce;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Laboratorio
 */
@WebServlet(name = "LugaAcceServ", urlPatterns = {"/LugaAcceServ"})
public class LugaAcceServ extends HttpServlet {

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
        
        boolean esValido = request.getMethod().equals("POST");
        if(esValido)
        {
            String mens = "";
            String CRUD = request.getParameter("CursBton");
            if(CRUD.equals("Guardar"))
            {
                LugaAcce obje = new LugaAcce();
                obje.setNombLugaAcce(request.getParameter("nombLuga"));
                obje.setFechAlta(new Date());
                obje.setEsta(1);
                mens = new LugaAcceCtrl().guar(obje) ? "Datos guardados exitosamente" : "Datos NO guardados";
            }
            else if(CRUD.equals("Consultar"))
            {
                Long CodiLuga = Long.parseLong(request.getParameter("codiPersRadio") == null ? 
                        "0" : request.getParameter("codiPersRadio"));
                LugaAcce objeLuga = new LugaAcceCtrl().get(CodiLuga);
                if(objeLuga != null)
                {
                    request.setAttribute("CodiLuga", objeLuga.getCodiLugaAcce());
                    request.setAttribute("nombLuga", objeLuga.getNombLugaAcce());
                }
            }
            else if(CRUD.equals("Modificar"))
            {
                LugaAcce obje = new LugaAcce();
                obje.setNombLugaAcce(request.getParameter("nombLuga"));
                obje.setEsta(1);
                obje.setCodiLugaAcce(Long.parseLong(request.getParameter("CodiLuga")));
                mens = new LugaAcceCtrl().modi(obje) ? "Datos modificados" : "Datos no modificados";
            }
            else if(CRUD.equals("Eliminar"))
            {
                Long CodiLuga = Long.parseLong(request.getParameter("CodiLuga"));
                mens = new LugaAcceCtrl().elimin(CodiLuga) ? "Datos Eliminados" : "Datos no eliminados"; 
            }
            request.setAttribute("mensAler", mens);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        else
        {
            response.sendRedirect(request.getContextPath() + "/index.jsp");
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
