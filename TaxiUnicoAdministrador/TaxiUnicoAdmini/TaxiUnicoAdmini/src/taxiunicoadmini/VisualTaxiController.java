/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taxiunicoadmini;

import clases.Taxista;
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
public class VisualTaxiController implements Initializable {
    //columnas 
    @FXML
    private TableView<Taxista> tableView = new TableView<>();
    @FXML
    private TableColumn<Taxista, String> taxistaName = new TableColumn<>();
    @FXML
    private TableColumn<Taxista, String> taxistaEmail = new TableColumn<>();
    @FXML
    private TableColumn<Taxista, String> taxistaTelephone = new TableColumn<>();
    @FXML
    private TableColumn<Taxista, String> taxistaUser = new TableColumn<>();
    @FXML
    private TableColumn<Taxista, String> taxistaStatus = new TableColumn<>();
    @FXML
    private TableColumn<Taxista, String> taxistaRating = new TableColumn<>();
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        taxistaName.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Nombre"));
        taxistaEmail.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Correo"));
        taxistaTelephone.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Telefono"));
        taxistaUser.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Usuario"));
        taxistaStatus.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Estatus"));
        taxistaRating.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Rating"));
        tableView.setItems(getClientInfo());
    }
    
    public ObservableList<Taxista> getClientInfo() {

        ObservableList<Taxista> taxistas = FXCollections.observableArrayList();
        taxistas.add(new Taxista("Juan Martinez","jm@gmail.com", "83656383", "JM98", true, 5));
        taxistas.add(new Taxista("Pedro Páramo", "pp@gmail.com", "82636384", "Escri", true, 4));
        taxistas.add(new Taxista("Lola Mtz", "lalola@gmail.com", "83636345", "Lola", false, 2.5));
        taxistas.add(new Taxista("Bryan Reynolds", "bryan@gmail.com", "83632386", "BB", true, 3));
        taxistas.add(new Taxista("Kim K ", "KK@gmail.com", "93632383","kk33", false, 2));

        return taxistas;

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
