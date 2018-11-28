/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taxiunicoadmini;

import clases.Cliente;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.stage.Stage;
import java.sql.*;
import java.time.LocalDate;
import java.time.Month;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import taxiunicoadmini.dbconnection.DBConnection;

/**
 *
 * @author Alvaro Marquez
 */
public class FXMLDocumentController implements Initializable {
    DBConnection connectionClass = new DBConnection();
    Connection connection = connectionClass.getConnection();
    @FXML TextField username;
    @FXML PasswordField password;
    
    //columnas 
    @FXML
    private TableView<Cliente> tableView = new TableView<>();
    @FXML
    private TableColumn<Cliente, String> clientName = new TableColumn<>();
    @FXML
    private TableColumn<Cliente, String> clientEmail = new TableColumn<>();
    @FXML
    private TableColumn<Cliente, String> clientTelephone = new TableColumn<>();
    @FXML
    private TableColumn<Cliente, String> clientUser = new TableColumn<>();
    @FXML
    private TableColumn<Cliente, String> clientStatus = new TableColumn<>();
    @FXML
    private TableColumn<Cliente, String> clientRating = new TableColumn<>();
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        clientName.setCellValueFactory(new PropertyValueFactory<>("clientName"));
        clientEmail.setCellValueFactory(new PropertyValueFactory<>("clientEmail"));
        clientTelephone.setCellValueFactory(new PropertyValueFactory<>("clientTelephone"));
        clientUser.setCellValueFactory(new PropertyValueFactory<>("clientUser"));
        clientStatus.setCellValueFactory(new PropertyValueFactory<>("clientStatus"));
        clientRating.setCellValueFactory(new PropertyValueFactory<>("clientRating"));
        tableView.setItems(getClientInfo());
    }
    
  public void changeScreenButtonPushed(ActionEvent event) throws IOException
    {
        try {
            //obtener texto de user text box 
            String user = username.getText();
            String pass = password.getText();
            
            //preparar para procedimiento almacenado
            CallableStatement statement = connection.prepareCall("{call get_Usuario_Contrasena_Admin(?)}");
            statement.setString(1, user);

            //llamar procedimiento almacenado
            statement.execute();
            ResultSet resultSet = statement.getResultSet();
            if(resultSet.next()){
                String valid_pass = resultSet.getString(2);//nos da la password

                System.out.println("pass:" + pass + "  " + "valid_pass:" + valid_pass);
                if (valid_pass.equals(pass)) {
                    System.out.println("im in");
                    Parent tableViewParent = FXMLLoader.load(getClass().getResource("visualClien.fxml"));
                    Scene tableViewScene = new Scene(tableViewParent);

                    //This line gets the Stage information
                    Stage window = (Stage) ((Node) event.getSource()).getScene().getWindow();

                    window.setScene(tableViewScene);
                    window.show();
                }
            }
            //else muestra mensaje de error
        } catch (SQLException ex) {
            Logger.getLogger(FXMLDocumentController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
      
       public void cambiarAltTaxi(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("altaTaxista.fxml"));
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
           public void recuperarContra(ActionEvent event) throws IOException
    {
        Parent tableViewParent = FXMLLoader.load(getClass().getResource("recuperarContra.fxml"));
        Scene tableViewScene = new Scene(tableViewParent);
        
        //This line gets the Stage information
        Stage window = (Stage)((Node)event.getSource()).getScene().getWindow();
        
        window.setScene(tableViewScene);
        window.show();
    }    
    
    public void prueba(ActionEvent event) throws IOException
    {
        DBConnection connectionClass = new DBConnection();
        Connection connection = connectionClass.getConnection();
        
      try {
          //prepare statement
          CallableStatement statement = connection.prepareCall("{call view_clientes()}");
          
          //call stored procedure
          statement.execute();
          ResultSet resultSet = statement.getResultSet();
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
          }
          
      } catch (SQLException ex) {
          Logger.getLogger(FXMLDocumentController.class.getName()).log(Level.SEVERE, null, ex);
      }
    }  
    
    public ObservableList<Cliente> getClientInfo() {

        ObservableList<Cliente> clientes = FXCollections.observableArrayList();
        clientes.add(new Cliente("Frank Sinatra", "123@gmail.com", "8110252558", "franksin", true, 4.1));
        clientes.add(new Cliente("Frank Sinatra", "123@gmail.com", "8110252558", "franksin", true, 4.1));
        clientes.add(new Cliente("Frank Sinatra", "123@gmail.com", "8110252558", "franksin", true, 4.1));
        clientes.add(new Cliente("Frank Sinatra", "123@gmail.com", "8110252558", "franksin", true, 4.1));
        clientes.add(new Cliente("Frank Sinatra", "123@gmail.com", "8110252558", "franksin", true, 4.1));

        return clientes;

    }    
}
