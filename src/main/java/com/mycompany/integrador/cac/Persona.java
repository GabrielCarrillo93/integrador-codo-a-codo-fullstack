/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.integrador.cac;

import java.io.Serializable;

/**
 *
 * @author Marina
 */
public class Persona implements Serializable{
    private int id;
    private String nombre;
    private String apellido;
    private String tema;
    private String foto;

    public Persona() {
    }

    public Persona(int id, String nombre, String apellido, String tema, String foto) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.tema = tema;
        this.foto = foto;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        if (foto == null || foto.trim().isEmpty()){
            this.foto = "img/blank-profile.png";
        } else {
            this.foto = foto.trim();
        }
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getTema() {
        return tema;
    }

    public void setNombre(String nombre) {
        if (nombre != null) {
            this.nombre = nombre;
        }
    }

    public void setApellido(String apellido) {
        if (apellido != null) {
            this.apellido = apellido;
        }
    }

    public void setTema(String tema) {
        if (tema != null) {
            this.tema = tema;
        }
    }
    
    
}
