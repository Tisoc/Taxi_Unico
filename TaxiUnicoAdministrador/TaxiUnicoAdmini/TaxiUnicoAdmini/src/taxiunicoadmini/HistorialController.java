/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taxiunicoadmini;

import clases.Cliente;
import clases.Taxista;
import clases.Viaje;
import java.io.IOException;
import java.net.URL;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import taxiunicoadmini.dbconnection.DBConnection;

/**
 * FXML Controller class
 *
 * @author Alvaro Marquez
 */
public class HistorialController implements Initializable {
    DBConnection connectionClass = new DBConnection();
    Connection connection = connectionClass.getConnection();
    CallableStatement statement;
    //columnas 
    @FXML
    private TableView<Cliente> tableViewCliente = new TableView<>();
    @FXML
    private TableColumn<Cliente, String> clientName = new TableColumn<>();
    @FXML
    private TableColumn<Cliente, String> clientRating = new TableColumn<>();
    @FXML
    private TableView<Taxista> tableViewTaxista = new TableView<>();
    @FXML
    private TableColumn<Taxista, String> taxistaName = new TableColumn<>();
    @FXML
    private TableColumn<Taxista, String> taxistaRating = new TableColumn<>();
    @FXML
    private TableView<Viaje> tableViewViaje = new TableView<>();
    @FXML
    private TableColumn<Viaje, String> viajeOrigen = new TableColumn<>();
    @FXML
    private TableColumn<Viaje, String> viajeDestino = new TableColumn<>();
    @FXML
    private TableColumn<Viaje, String> viajeFecha = new TableColumn<>();
    @FXML
    private TableColumn<Viaje, String> viajeEstatus = new TableColumn<>();
    @FXML
    private TableColumn<Viaje, String> viajeDistancia = new TableColumn<>();
    @FXML
    private TableColumn<Viaje, String> viajeCosto = new TableColumn<>();
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        clientName.setCellValueFactory(new PropertyValueFactory<Cliente, String>("Nombre"));
        clientRating.setCellValueFactory(new PropertyValueFactory<Cliente, String>("Rating"));
        tableViewCliente.setItems(getClienteInfo());
        
        taxistaName.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Nombre"));
        taxistaRating.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Rating"));
        tableViewTaxista.setItems(getTaxiInfo());
        
        viajeOrigen.setCellValueFactory(new PropertyValueFactory<>("Origen"));
        viajeDestino.setCellValueFactory(new PropertyValueFactory<>("Destino"));
        viajeFecha.setCellValueFactory(new PropertyValueFactory<>("Fecha"));
        viajeDistancia.setCellValueFactory(new PropertyValueFactory<>("Distancia"));
        viajeCosto.setCellValueFactory(new PropertyValueFactory<>("Costo"));
        tableViewViaje.setItems(getViajeInfo());
    }
    
    public ObservableList<Viaje> getViajeInfo() {
        ObservableList<Viaje> viajes = FXCollections.observableArrayList();
        try {
            //preparar para procedimiento almacenado
            statement = connection.prepareCall("{call view_viajes()}");

            //llamar procedimiento almacenado
            statement.execute();
            ResultSet resultSet = statement.getResultSet();
            ResultSetMetaData metaData = resultSet.getMetaData();
            //obtener número de columna de cada atributo
            int numCols = metaData.getColumnCount(); //number of column
            int numColOrigen, numColDestino, numColFecha, numColEstatus, numColDistancia, numColCosto;
            numColOrigen = numColDestino = numColFecha = numColEstatus = numColDistancia = numColCosto =1;
            for (int i = 1; i <= numCols; i++) {
                String colName = metaData.getColumnLabel(i);
                switch (colName) {
                    case "Origen":
                        numColOrigen = i;
                        break;
                    case "Destino":
                        numColDestino = i;
                        break;
                    case "Fecha":
                        numColFecha = i;
                        break;
                    case "Estatus":
                        numColEstatus = i;
                        break;
                    case "Distancia":
                        numColDistancia = i;
                        break;
                    case "Costo":
                        numColCosto = i;
                        break;
                }
            }
            //añadir viajes a la lista a regresar
            while (resultSet.next()) {
                String origen = resultSet.getString(numColOrigen);
                String destino = resultSet.getString(numColDestino);
                String fecha = resultSet.getString(numColFecha);
                String estatus = resultSet.getString(numColEstatus);
                String distancia = resultSet.getString(numColDistancia);
                String costo = resultSet.getString(numColCosto);
                double dDist = Double.parseDouble(distancia);
                double dCosto = Double.parseDouble(costo);
                Viaje v = new Viaje(origen, destino, fecha, estatus, dDist, dCosto);
                viajes.add(v);
            }
            //else muestra mensaje de error
        } catch (SQLException ex) {
            Logger.getLogger(FXMLDocumentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return viajes;
    }

      public void changeScreenButtonPushed(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("visualClien.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
      
    public ObservableList<Cliente> getClienteInfo() {
        ObservableList<Cliente> clientes = FXCollections.observableArrayList();
        try {
            //preparar para procedimiento almacenado
            statement = connection.prepareCall("{call view_viajes()}");

            //llamar procedimiento almacenado
            statement.execute();
            ResultSet resultSet = statement.getResultSet();
            ResultSetMetaData metaData = resultSet.getMetaData();
            //obtener número de columna de cada atributo
            int numCols = metaData.getColumnCount(); //number of column
            int numColNombre, numColRating;
            numColNombre = numColRating = 1;
            for (int i = 1; i <= numCols; i++) {
                String colName = metaData.getColumnLabel(i);
                switch (colName) {
                    case "Cliente":
                        numColNombre = i;
                        break;
                    case "Rating Cliente":
                        numColRating = i;
                        break;
                }
            }
            //añadir clientes a la lista a regresar
            while (resultSet.next()) {
                String nombre = resultSet.getString(numColNombre);
                String rating = resultSet.getString(numColRating);
                double doubleRating = Double.parseDouble(rating);
                clientes.add(new Cliente(nombre, doubleRating));
            }
            //else muestra mensaje de error
        } catch (SQLException ex) {
            Logger.getLogger(FXMLDocumentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return clientes;
    }
    
    public ObservableList<Taxista> getTaxiInfo() {
        ObservableList<Taxista> taxistas = FXCollections.observableArrayList();
        try {
            //preparar para procedimiento almacenado
            statement = connection.prepareCall("{call view_viajes()}");

            //llamar procedimiento almacenado
            statement.execute();
            ResultSet resultSet = statement.getResultSet();
            ResultSetMetaData metaData = resultSet.getMetaData();
            //obtener número de columna de cada atributo
            int numCols = metaData.getColumnCount(); //number of column
            int numColNombre, numColRating;
            numColNombre = numColRating = 1;
            for (int i = 1; i <= numCols; i++) {
                String colName = metaData.getColumnLabel(i);
                switch (colName) {
                    case "Taxista":
                        numColNombre = i;
                        break;
                    case "Rating Taxista":
                        numColRating = i;
                        break;
                }
            }
            //añadir clientes a la lista a regresar
            while (resultSet.next()) {
                String nombre = resultSet.getString(numColNombre);
                String rating = resultSet.getString(numColRating);
                double doubleRating = Double.parseDouble(rating);
                taxistas.add(new Taxista(nombre, doubleRating));
            }
            //else muestra mensaje de error
        } catch (SQLException ex) {
            Logger.getLogger(FXMLDocumentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return taxistas;
    }
    
      public void cambiarAltaClie(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("altaCliente.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
    
     public void cambiarVisTaxi(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("visualTaxi.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
     
      public void salirApp(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("FXMLDocument.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
      
          
        public void verConfig(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("Configuracion.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
        
           public void verHistorial(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("Historial.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }  
           
         public void cambiarAltTaxi(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("altaTaxista.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
}
