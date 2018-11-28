/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taxiunicoadmini;

import clases.Taxista;
import clases.Carro;
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
public class VisualTaxiController implements Initializable {
    DBConnection connectionClass = new DBConnection();
    Connection connection = connectionClass.getConnection();
    CallableStatement statement;
    //columnas 
    @FXML
    private TableView<Taxista> tableViewTaxista =  new TableView<>();
    @FXML
    private TableView<Carro> tableViewCarro = new TableView<>();
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
    @FXML
    private TableColumn<Carro, String> carroModelo = new TableColumn<>();
    @FXML
    private TableColumn<Carro, String> carroPlaca = new TableColumn<>();
    @FXML
    private TableColumn<Carro, String> carroColor = new TableColumn<>();
    @FXML
    private TableColumn<Carro, String> carroMarca = new TableColumn<>();
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        try {
            // TODO
            taxistaName.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Nombre"));
            taxistaEmail.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Correo"));
            taxistaTelephone.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Telefono"));
            taxistaUser.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Usuario"));
            taxistaStatus.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Estatus"));
            taxistaRating.setCellValueFactory(new PropertyValueFactory<Taxista, String>("Rating"));
            tableViewTaxista.setItems(getTaxiInfo());
            
            carroPlaca.setCellValueFactory(new PropertyValueFactory<>("Placa"));
            carroMarca.setCellValueFactory(new PropertyValueFactory<>("Marca"));
            carroModelo.setCellValueFactory(new PropertyValueFactory<>("Modelo"));
            carroColor.setCellValueFactory(new PropertyValueFactory<>("Color"));
            tableViewCarro.setItems(getCarroInfo());
            
            //tableView.setItems(getCarroInfo());
        } catch (IOException ex) {
            Logger.getLogger(VisualTaxiController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ObservableList<Taxista> getTaxiInfo() throws IOException {
        ObservableList<Taxista> taxistas = FXCollections.observableArrayList();
        try {
            //preparar para procedimiento almacenado
            statement = connection.prepareCall("{call view_taxistas()}");

            //llamar procedimiento almacenado
            statement.execute();
            ResultSet resultSet = statement.getResultSet();
            ResultSetMetaData metaData = resultSet.getMetaData();
            //obtener número de columna de cada atributo
            int numCols = metaData.getColumnCount(); //number of column
            int numColUsuario, numColNombre, numColCorreo, numColTelefono, numColRating, numColEstatus;
            numColUsuario = numColNombre = numColCorreo = numColTelefono = numColRating = numColEstatus = 1;
            for (int i = 1; i <= numCols; i++) {
                String colName = metaData.getColumnLabel(i);
                switch (colName) {
                    case "Usuario":
                        numColUsuario = i;
                        break;
                    case "Nombre":
                        numColNombre = i;
                        break;
                    case "Correo":
                        numColCorreo = i;
                        break;
                    case "Telefono":
                        numColTelefono = i;
                        break;
                    case "Estatus":
                        numColEstatus = i;
                        break;
                    case "Rating":
                        numColRating = i;
                        break;
                }
            }
            //añadir taxistas a la lista a regresar
            while (resultSet.next()) {
                String usuario = resultSet.getString(numColUsuario);
                String nombre = resultSet.getString(numColNombre);
                String correo = resultSet.getString(numColCorreo);
                String telefono = resultSet.getString(numColTelefono);
                String rating = resultSet.getString(numColRating);
                String estatus = resultSet.getString(numColEstatus);
                boolean booleanEstatus = (Integer.parseInt(estatus) > 0);
                double doubleRating = Double.parseDouble(rating);
                taxistas.add(new Taxista(usuario, nombre, correo, telefono, booleanEstatus, doubleRating));
            }
            return taxistas;
            //else muestra mensaje de error
        } catch (SQLException ex) {
            Logger.getLogger(FXMLDocumentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return taxistas;
    }
    
    public ObservableList<Carro> getCarroInfo() throws IOException {
        ObservableList<Carro> carros = FXCollections.observableArrayList();
        try {
            //get result set
            statement.execute();
            ResultSet resultSet = statement.getResultSet();
            ResultSetMetaData metaData = resultSet.getMetaData();
            //obtener número de columna de cada atributo
            int numCols = metaData.getColumnCount(); //number of column
            int numColPlaca, numColMarca, numColModelo, numColColor;
            numColPlaca=numColMarca=numColModelo=numColColor=1;
            for(int i = 1; i <= numCols; i++){
                String colName = metaData.getColumnLabel(i);
                switch (colName) {
                    case "Placa":
                        numColPlaca = i;
                        break;
                    case "Marca":
                        numColMarca = i;
                        break;
                    case "Modelo":
                        numColModelo = i;
                        break;
                    case "Color":
                        numColColor = i;
                        break;
                }
            }
            //añadir carros a la lista a regresar
            while (resultSet.next()) {
                String placa = resultSet.getString(numColPlaca);
                String marca = resultSet.getString(numColMarca);
                String modelo = resultSet.getString(numColModelo);
                String color = resultSet.getString(numColColor);
                carros.add(new Carro(placa, marca, modelo, color));
            }
            return carros;
            //else muestra mensaje de error
        } catch (SQLException ex) {
            Logger.getLogger(FXMLDocumentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return carros;
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
