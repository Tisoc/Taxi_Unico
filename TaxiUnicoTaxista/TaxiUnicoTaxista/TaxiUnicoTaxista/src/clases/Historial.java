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
public class Historial {
    private Viaje viaje;
    private Taxista taxista;

    public Historial(Viaje viaje, Taxista taxista) {
        this.viaje = viaje;
        this.taxista = taxista;
    }
    
    public String getFecha(){
        return viaje.getFecha();
    }
    
    public String getOrigen(){
        return viaje.getOrigen();
    }
    
    public String getDestino(){
        return viaje.getDestino();
    }
    
    public String getNombreTaxista(){
        return taxista.getNombre();
    }
    
    public double getCosto(){
        return viaje.getCosto();
    }
    
    public double getDistancia(){
        return viaje.getDistancia();
    }
    

}
