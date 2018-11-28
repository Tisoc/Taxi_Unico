/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;
import clases.Taxista;
import clases.Carro;


/**
 *
 * @author pablo
 */
public class RowDataTaxi {

    private Carro carro;
    private Taxista taxista;

    public RowDataTaxi(Carro carro, Taxista taxista) {
        this.carro = carro;
        this.taxista = taxista;
    }

    public Carro getCarro() {
        return carro;
    }

    public Taxista getTaxista() {
        return taxista;
    }
}
