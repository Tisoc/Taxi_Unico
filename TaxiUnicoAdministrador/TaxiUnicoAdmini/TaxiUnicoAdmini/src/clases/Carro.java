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
public class Carro{
        private String Placa;
	private String Marca;
	private String Modelo;
	private int Año;
	private String Color;

    public Carro(String Placa, String Marca, String Modelo, String Color) {
        this.Placa = Placa;
        this.Marca = Marca;
        this.Modelo = Modelo;
        this.Color = Color;
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
