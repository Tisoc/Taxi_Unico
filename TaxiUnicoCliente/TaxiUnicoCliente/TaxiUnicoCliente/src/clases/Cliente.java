/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.time.LocalDate;

/**
 *
 * @author pablo
 */
public class Cliente{
        private static int id_currCliente;
        
	private String Usuario;
	private String Contrasena;
        private String Nombre;
	private String Correo;
	private String Telefono;
        private boolean Estatus;
    
    public Cliente() {
    }
        
    public static int getId_currCliente() {
        return id_currCliente;
    }

    public static void setId_currCliente(int id_currCliente) {
        Cliente.id_currCliente = id_currCliente;
    }
    public boolean isEstatus() {
        return Estatus;
    }

    public void setEstatus(boolean Estatus) {
        this.Estatus = Estatus;
    }
	private double Rating;

    public Cliente(String name, String email, String telephone, String user, boolean status, double rating) {
        this.Nombre = new String(name);
        this.Correo = email;
        this.Telefono = telephone;
        this.Usuario = user;
        this.Estatus = status;
        this.Rating = rating;
    }
    
    public Cliente(String name, double rating) {
        this.Nombre = new String(name);
        this.Rating = rating;
    }

	public String getUsuario(){
		return Usuario;
	}

	public void setUsuario(String Usuario){
		this.Usuario=Usuario;
	}

	public String getContrasena(){
		return Contrasena;
	}

	public void setContrasena(String Contrasena){
		this.Contrasena=Contrasena;
	}

	public String getNombre(){
		return Nombre;
	}

	public void setNombre(String Nombre){
		this.Nombre=Nombre;
	}

	public String getCorreo(){
		return Correo;
	}

	public void setCorreo(String Correo){
		this.Correo=Correo;
	}

	public String getTelefono(){
		return Telefono;
	}

	public void setTelefono(String Telefono){
		this.Telefono=Telefono;
	}

	public double getRating(){
		return Rating;
	}

	public void setRating(double Rating){
		this.Rating=Rating;
	}
}
