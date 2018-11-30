/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taxiunicocliente;

import clases.Cliente;
import clases.Historial;
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
import javafx.scene.control.CheckBox;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.PasswordField;
import javafx.scene.control.RadioButton;
import javafx.scene.control.SelectionMode;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleGroup;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import taxiunicocliente.dbconnection.DBConnection;
/**
 *
 * @author Alvaro Marquez
 */
public class HistorialClienteController implements Initializable {
    DBConnection connectionClass = new DBConnection();
    Connection connection = connectionClass.getConnection();
    CallableStatement statement;
    
    @FXML
    private TableView<Historial> tableView = new TableView<>();
    @FXML
    private TableColumn<Historial, String> viajeFecha = new TableColumn<>();
    @FXML
    private TableColumn<Historial, String> viajeOrigen = new TableColumn<>();
    @FXML
    private TableColumn<Historial, String> viajeDestino = new TableColumn<>();
    @FXML
    private TableColumn<Historial, String> taxistaNombre = new TableColumn<>();
    @FXML
    private TableColumn<Historial, Double> viajeDistancia = new TableColumn<>();
    @FXML
    private TableColumn<Historial, Double> viajeCosto = new TableColumn<>();
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        viajeFecha.setCellValueFactory(new PropertyValueFactory<>("Fecha"));
        viajeOrigen.setCellValueFactory(new PropertyValueFactory<>("Origen"));
        viajeDestino.setCellValueFactory(new PropertyValueFactory<>("Destino"));
        taxistaNombre.setCellValueFactory(new PropertyValueFactory<>("NombreTaxista"));
        viajeDistancia.setCellValueFactory(new PropertyValueFactory<>("Distancia"));
        viajeCosto.setCellValueFactory(new PropertyValueFactory<>("Costo"));
        tableView.setItems(getHistorialInfo());
    }
    
    public ObservableList<Historial> getHistorialInfo(){
        ObservableList<Historial> historial;
        historial = FXCollections.observableArrayList();
        try {
            //preparar para procedimiento almacenado
            statement = connection.prepareCall("{call getHistorial_Cliente(?)}");
            statement.setInt(1, Cliente.getId_currCliente());

            //llamar procedimiento almacenado
            statement.execute();
            ResultSet resultSet = statement.getResultSet();
            ResultSetMetaData metaData = resultSet.getMetaData();
            //obtener número de columna de cada atributo
            int numCols = metaData.getColumnCount(); //number of column
            int numColOrigen, numColDestino, numColFecha, numColNombreTaxista, numColDistancia, numColCosto;
            numColOrigen = numColDestino = numColFecha = numColNombreTaxista = numColDistancia = numColCosto = 1;
            
            /*
            ResultSetMetaData rsmd = resultSet.getMetaData();
            int columnsNumber = rsmd.getColumnCount();
            while (resultSet.next()) {
                for (int i = 1; i <= columnsNumber; i++) {
                    if (i > 1) {
                        System.out.print(",  ");
                    }
                    String columnValue = resultSet.getString(i);
                    System.out.print(columnValue + " " + rsmd.getColumnName(i));
                }
                System.out.println("");
            }*/
            
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
                    case "Nombre Taxista":
                        numColNombreTaxista = i;
                        break;
                    case "Distancia":
                        numColDistancia = i;
                        break;
                    case "Costo":
                        numColCosto = i;
                        break;
                }
            }
            
            while (resultSet.next()) {
                String origen = resultSet.getString(numColOrigen);
                String destino = resultSet.getString(numColDestino);
                String fecha = resultSet.getString(numColFecha);
                String nombreTaxista = resultSet.getString(numColNombreTaxista);
                String distancia = resultSet.getString(numColDistancia);
                String costo = resultSet.getString(numColCosto);
                double dDist = Double.parseDouble(distancia);
                double dCosto = Double.parseDouble(costo);
                
                Viaje v = new Viaje(origen, destino, fecha, dDist, dCosto);
                Taxista t = new Taxista(nombreTaxista);
                Historial h = new Historial(v, t);
                historial.add(h);
            }
            //else muestra mensaje de error
        } catch (SQLException ex) {
            Logger.getLogger(FXMLDocumentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return historial;
    }
    
      public void cambiarHistorial(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("HistorialCliente.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
    
     public void cambiarPerfil(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("Perfil.fxml"));
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
      
       public void verDetalle(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("DetalleViaje.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
       
        public void verEncues(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("Encuesta.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
        
        public void cambiarCont(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("CambiarContra.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
        
        public void cancelarViaje(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("ViajeCan.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
        
         
    public void volverDetalle(ActionEvent event) throws IOException{
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("ProximoViaje.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }
    
}
