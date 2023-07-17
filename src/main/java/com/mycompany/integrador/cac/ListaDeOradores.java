/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.integrador.cac;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Marina
 */
@WebServlet (name= "veroradores", urlPatterns = "/ver-oradores")
public class ListaDeOradores extends HttpServlet {
    private Modelo m;
    private final String LISTA = "WEB-INF/ver-oradores.jsp";
    private final String EDITAR = "WEB-INF/editar-orador.jsp";
    private final String BORRAR = "WEB-INF/borrar-orador.jsp";
    
    @Override
    public void init() throws ServletException{
        this.m = new Modelo();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {       int id;
        try {
            String accion = req.getParameter("accion");
            accion = accion == null ? "" : accion;
            switch(accion){
                case "editar":
                    id = Integer.parseInt(req.getParameter("id"));
                    req.setAttribute("oradorAEditar", m.getPersona(id));
                    req.getRequestDispatcher(EDITAR).forward(req, resp);
                    break;
                case "borrar":
                    id = Integer.parseInt(req.getParameter("id"));
                    req.setAttribute("oradorABorrar", m.getPersona(id));
                    req.getRequestDispatcher(BORRAR).forward(req, resp);
                default: req.setAttribute("listaOradores", m.getPersonas());
            req.getRequestDispatcher(LISTA).forward(req, resp);
            }
            
        } catch (SQLException ex) {
           ex.printStackTrace();
           resp.sendError(500,  "Falla al leer la base de datos");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Persona orador;
        int id;
        String accion = req.getParameter("accion");
            accion = accion == null ? "" : accion;
            switch(accion){
                case "agregar":
                    orador = getPersonaParams(req);
                    m.addPersona(orador);
                    break;
                case "editar":
                    id = Integer.parseInt(req.getParameter("id"));
                    orador = getPersonaParams(req);
                    orador.setId(id);
                    m.updatePersona(orador);
                    break;
                case "borrar":
                    id = Integer.parseInt(req.getParameter("id"));
                    orador = getPersonaParams(req);
                    orador.setId(id);
                    m.deletePersona(orador);
                    break;
            }
        
        resp.sendRedirect(getServletContext().getContextPath() + "/ver-oradores");
    }
    
    private Persona getPersonaParams(HttpServletRequest req){
        Persona orador = new Persona();
        orador.setNombre(req.getParameter("nombre"));
        orador.setApellido(req.getParameter("apellido"));
        orador.setTema(req.getParameter("tema"));
        return orador;
    }
    
    
    
}
