/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.integrador.cac;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Marina
 */
public class Modelo {
    
    private static final String getAllQuery = "SELECT * FROM personas;";
    private static final String getOneQuery = "SELECT * FROM personas WHERE id = ?;";
    private static final String addQuery = "INSERT INTO personas VALUES(null, ?, ?, ?, DEFAULT)";
    private static final String updateQuery = "UPDATE personas SET nombre=?, apellido=?, tema=?, foto=DEFAULT WHERE id=?;";
    private static final String deleteQuery = "DELETE FROM personas WHERE id = ?;";
    
    public Modelo() {
        
    }
    
    ArrayList<Persona> getPersonas() throws SQLException{
        ArrayList<Persona> personas = new ArrayList<>(); 
        try (Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(getAllQuery);
            ResultSet rs = ps.executeQuery();)
            {
            while (rs.next()) {
                personas.add(rsToPersona(rs));
            }
        } catch (SQLException ex) {
            throw new RuntimeException("error al leer la base de datos de mysql", ex);
        }
        return personas;
    }
    
    public int addPersona(Persona persona){
        try (Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(addQuery);)
            {
            int cantRegsAfectados;
            fillPreparedStatement(ps, persona);
            cantRegsAfectados = ps.executeUpdate();
            return cantRegsAfectados;  
        } catch (SQLException ex){
            throw new RuntimeException("error al agregar el alumno de mysql", ex);
        }
    }
    
    public Persona getPersona(int id){
        try (Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(getOneQuery);)
            {
            Persona orador = null;
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            orador = rsToPersona(rs);
            return orador;
        } catch (SQLException ex) {
            throw new RuntimeException("error al leer el alumno con id" + id, ex);
        }
    }
    
    public int updatePersona(Persona persona){
        try (Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(updateQuery);)
            {
            int cantRegsAfectados;
            fillPreparedStatement(ps, persona);
            ps.setInt(4, persona.getId());
            cantRegsAfectados = ps.executeUpdate();
            return cantRegsAfectados;  
        } catch (SQLException ex){
            throw new RuntimeException("error al editar el alumno de mysql", ex);
        }
    }
    
    public int deletePersona(Persona persona){
        try (Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(deleteQuery);)
            {
            int cantRegsAfectados;
            ps.setInt(1, persona.getId());
            cantRegsAfectados = ps.executeUpdate();
            return cantRegsAfectados;  
        } catch (SQLException ex){
            throw new RuntimeException("error al borrar el alumno de mysql", ex);
        }
    }
    
    private Persona rsToPersona(ResultSet rs) throws SQLException{
        int id = rs.getInt("id");
        String nombre = rs.getString("nombre");
        String apellido = rs.getString("apellido");
        String tema = rs.getString("tema");
        String foto = rs.getString("foto");
        return new Persona(id, nombre, apellido, tema, foto);
    }
    
    private void fillPreparedStatement(PreparedStatement ps, Persona persona) throws SQLException{
        ps.setString(1, persona.getNombre());
        ps.setString(2, persona.getApellido());
        ps.setString(3, persona.getTema());
        
    }
}


