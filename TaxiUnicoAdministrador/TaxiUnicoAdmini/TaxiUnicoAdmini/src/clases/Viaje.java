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
	private int Taxista_ID;
	private int Cliente_ID;
	private int Tarifa_ID;
	private String Origen;
	private String Destino;
	private String Estatus;
	private double Distancia;
	private double Costo;
	private String FormaDePago;
	private int EncuestaTaxista_ID;
	private int EncuestaCliente_ID;

	public int getTaxista_id(){
		return Taxista_ID;
	}

	public void setTaxista_id(int Taxista_ID){
		this.Taxista_ID=Taxista_ID;
	}

	public int getCliente_id(){
		return Cliente_ID;
	}

	public void setCliente_id(int Cliente_ID){
		this.Cliente_ID=Cliente_ID;
	}

	public int getTarifa_id(){
		return Tarifa_ID;
	}

	public void setTarifa_id(int Tarifa_ID){
		this.Tarifa_ID=Tarifa_ID;
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

	public int getEncuestataxista_id(){
		return EncuestaTaxista_ID;
	}

	public void setEncuestataxista_id(int EncuestaTaxista_ID){
		this.EncuestaTaxista_ID=EncuestaTaxista_ID;
	}

	public int getEncuestacliente_id(){
		return EncuestaCliente_ID;
	}

	public void setEncuestacliente_id(int EncuestaCliente_ID){
		this.EncuestaCliente_ID=EncuestaCliente_ID;
	}
}
