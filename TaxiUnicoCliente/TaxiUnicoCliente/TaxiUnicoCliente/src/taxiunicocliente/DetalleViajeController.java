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
import javafx.scene.text.Text;
import javafx.stage.Stage;
import taxiunicocliente.dbconnection.DBConnection;
/**
 *
 * @author Alvaro Marquez
 */
public class DetalleViajeController implements Initializable {
    DBConnection connectionClass = new DBConnection();
    Connection connection = connectionClass.getConnection();
    
    @FXML
    Text tOrigen;
    @FXML
    Text tDestino;
    @FXML
    Text tNombreTaxista;
    @FXML
    Text tTelefono;
    @FXML
    Text tRating;
    @FXML
    Text tPlacas;
    
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
    
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        try {
            CallableStatement statement = connection.prepareCall("{call get_viajeActual_cliente(?)}");
            statement.setInt(1, Cliente.getId_currCliente());
            statement.execute();
            ResultSet rs = statement.getResultSet();
            
            ResultSetMetaData metaData = rs.getMetaData();
            //obtener número de columna de cada atributo
            int numCols = metaData.getColumnCount(); //number of column
            int numColOrigen, numColDestino, numColFecha, numColNombreTaxista, numColTelefono, numColRating, numColPlacas;
            numColOrigen = numColDestino = numColFecha = numColNombreTaxista = numColTelefono = numColRating = numColPlacas =1;

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
                    case "Nombre":
                        numColNombreTaxista = i;
                        break;
                    case "Telefono":
                        numColTelefono = i;
                        break;
                    case "Rating":
                        numColRating = i;
                        break;
                    case "Placa":
                        numColPlacas = i;
                        break;
                }       
            }
            String origen, destino, fecha, nombreTaxista, telefono, rating, placa;
            origen = destino = fecha = nombreTaxista = telefono = rating = placa = "null";
            if (rs.next()) {
                origen = "Origen: " + rs.getString(numColOrigen);
                destino = "Destino: " + rs.getString(numColDestino);
                fecha = "Fecha: " + rs.getString(numColFecha);
                nombreTaxista = "Nombre Taxista: " + rs.getString(numColNombreTaxista);
                telefono = "Telefono: " + rs.getString(numColTelefono);
                rating = "Rating: " + rs.getString(numColRating);
                placa = "Placas: " + rs.getString(numColPlacas);
            }
            tOrigen.setText(origen);
            tDestino.setText(destino);
            tNombreTaxista.setText(nombreTaxista);
            tTelefono.setText(telefono);
            tRating.setText(rating);
            tPlacas.setText(placa);
        } catch (SQLException ex) {
            Logger.getLogger(DetalleViajeController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }    
    
}

