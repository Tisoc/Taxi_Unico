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

/**
 * FXML Controller class
 *
 * @author Alvaro Marquez
 */
public class AltaClienteController implements Initializable {
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
        clientName.setCellValueFactory(new PropertyValueFactory<Cliente, String>("Nombre"));
        clientEmail.setCellValueFactory(new PropertyValueFactory<Cliente, String>("Correo"));
        clientTelephone.setCellValueFactory(new PropertyValueFactory<Cliente, String>("Telefono"));
        clientUser.setCellValueFactory(new PropertyValueFactory<Cliente, String>("Usuario"));
        clientStatus.setCellValueFactory(new PropertyValueFactory<Cliente, String>("Estatus"));
        clientRating.setCellValueFactory(new PropertyValueFactory<Cliente, String>("Rating"));
        tableView.setItems(getClientInfo());
    }
    
    public ObservableList<Cliente> getClientInfo() {

        ObservableList<Cliente> clientes = FXCollections.observableArrayList();
        clientes.add(new Cliente("Jaime E. Garza","jaimegarza97@gmail.com", "83636383", "Jaime1997", true, 5));
        clientes.add(new Cliente("Pablo Andrade", "pabloemilio97@gmail.com", "83636384", "PabloMan", true, 0));
        clientes.add(new Cliente("Alvaro M.", "alvaro@gmail.com", "83636385", "Alvarol", true, 0));
        clientes.add(new Cliente("Alex Lara", "alexanderlarius@gmail.com", "83636386", "AlexXxX", true, 0));
        clientes.add(new Cliente("Pedro Pedrina", "P3P3@gmail.com", "83636383","PePe88", false, 0));

        return clientes;

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
