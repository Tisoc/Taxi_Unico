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
class Carro{
	private int Taxista_ID;
        private String Placa;
	private String Marca;
	private String Modelo;
	private int Año;
	private String Color;

	public int getTaxista_id(){
		return Taxista_ID;
	}

	public void setTaxista_id(int Taxista_ID){
		this.Taxista_ID=Taxista_ID;
	}

	public String getMarca(){
		return Marca;
	}

	public void setMarca(String Marca){
		this.Marca=Marca;
	}

	public String getModelo(){
		return Modelo;
	}

	public void setModelo(String Modelo){
		this.Modelo=Modelo;
	}

	public int getAño(){
		return Año;
	}

	public void setAño(int Año){
		this.Año=Año;
	}

	public String getColor(){
		return Color;
	}

	public void setColor(String Color){
		this.Color=Color;
	}
        
        public String getPlaca() {
            return Placa;
        }

        public void setPlaca(String Placa) {
            this.Placa = Placa;
        }
}
