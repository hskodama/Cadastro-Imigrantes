/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.*;
import java.util.Vector;

/**
 *
 * @author Arthur
 */
public class consultaDAO {
    private Connection myConnection;
    private Statement st;
    
    public consultaDAO(){
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            myConnection = DriverManager.getConnection("jdbc:postgresql:" + "//localhost/CadastroImigrante?user=postgres&password=1234");
            st = myConnection.createStatement();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public Vector buscarTodos()
}
