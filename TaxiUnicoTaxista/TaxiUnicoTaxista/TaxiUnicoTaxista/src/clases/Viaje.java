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
public class Viaje{
	private String Origen;
	private String Destino;
	private String Estatus;
	private double Distancia;
	private double Costo;
	private String FormaDePago;
        private String Fecha;

        //origen, destino, fecha, estatus, dDist, dCosto
    public Viaje(String Origen, String Destino, String Fecha, String Estatus, double Distancia, double Costo) {
        this.Origen = Origen;
        this.Destino = Destino;
        this.Fecha = Fecha;
        this.Estatus = Estatus;
        this.Distancia = Distancia;
        this.Costo = Costo;
    }
    
    public Viaje(String Origen, String Destino, String Fecha, double Distancia, double Costo) {
        this.Origen = Origen;
        this.Destino = Destino;
        this.Fecha = Fecha;
        this.Distancia = Distancia;
        this.Costo = Costo;
    }
	public String getOrigen(){
		return Origen;
	}

	public void setOrigen(String Origen){
		this.Origen=Origen;
	}

	public String getDestino(){
		return Destino;
	}

	public void setDestino(String Destino){
		this.Destino=Destino;
	}

	public String getEstatus(){
		return Estatus;
	}

	public void setEstatus(String Estatus){
		this.Estatus=Estatus;
	}

	public double getDistancia(){
		return Distancia;
	}

	public void setDistancia(double Distancia){
		this.Distancia=Distancia;
	}

	public double getCosto(){
		return Costo;
	}

	public void setCosto(double Costo){
		this.Costo=Costo;
	}

	public String getFormadepago(){
		return FormaDePago;
	}

	public void setFormadepago(String FormaDePago){
		this.FormaDePago=FormaDePago;
	}
        
        public String getFecha() {
            return Fecha;
        }

        public void setFecha(String Fecha) {
            this.Fecha = Fecha;
        }
}
