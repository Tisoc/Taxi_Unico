/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author pablo
 */
public class Taxista{
	private String Usuario;
	private String Contrasena;
	private String Nombre;
	private String Correo;
	private String Telefono;
        private boolean Estatus;
 
    public Taxista(String Usuario, String Nombre, String Correo, String Telefono, boolean Estatus, double Rating) {
        this.Usuario = Usuario;
        this.Nombre = Nombre;
        this.Correo = Correo;
        this.Telefono = Telefono;
        this.Estatus = Estatus;
        this.Rating = Rating;
    }

    public boolean isEstatus() {
        return Estatus;
    }

    public void setEstatus(boolean Estatus) {
        this.Estatus = Estatus;
    }
	private double Rating;

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
