/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taxiunicoadmini;

import clases.Carro;
import clases.Taxista;
import java.io.IOException;
import java.net.URL;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ResourceBundle;
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
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import taxiunicoadmini.dbconnection.DBConnection;

/**
 * FXML Controller class
 *
 * @author Alvaro Marquez
 */
public class AltaTaxistaController implements Initializable {
    DBConnection connectionClass = new DBConnection();
    Connection connection = connectionClass.getConnection();
    //columnas 
    @FXML
    TextField taxistaName;
    @FXML
    TextField taxistaEmail;
    @FXML
    TextField taxistaTelephone;
    @FXML
    TextField taxistaUser;
    @FXML
    TextField taxistaContrasena;
    @FXML
    private TextField carroPlaca;
    @FXML
    private TextField carroMarca;
    @FXML
    private TextField carroModelo;
    @FXML
    private TextField carroColor;
    @FXML
    private TextField carroAño;
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
    }
    
    public void darDeAltaTaxista() throws SQLException {
        //preparar para procedimiento almacenado
        CallableStatement statement = connection.prepareCall("{call crear_taxista(?,?,?,?,?,?,?,?,?,?)}");
        
        String nombre = taxistaName.getText();
        String correo = taxistaEmail.getText();
        String telefono = taxistaTelephone.getText();
        String usuario = taxistaUser.getText();
        String contrasena = taxistaContrasena.getText();
        String placa = carroPlaca.getText();
        String marca = carroMarca.getText();
        String modelo = carroModelo.getText();
        String color = carroColor.getText();
        String año = carroAño.getText();

        statement.setString(1, usuario);
        statement.setString(2, contrasena);
        statement.setString(3, nombre);
        statement.setString(4, correo);
        statement.setString(5, telefono);
        statement.setString(6, marca);
        statement.setString(7, placa);
        statement.setString(8, modelo);
        statement.setString(9, color);
        statement.setString(10, año);

        //llamar procedimiento almacenado
        statement.execute();
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
    
      public void cambiarAltaClie(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("altaTaxista.fxml"));
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
