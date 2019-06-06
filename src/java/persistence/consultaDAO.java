/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import model.*;
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
//            /Class.forName("org.postgresql.Driver").newInstance();
            myConnection = DriverManager.getConnection("jdbc:postgresql:" + "//localhost/CadastroEstrangeiro?user=postgres&password=123456");
            st = myConnection.createStatement();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
    public Vector buscarPessoa(String rne, String nome, String nacionalidade, String estado_mora){
        ResultSet rs = null;
        
        //Vetor de elementos do tipo Filme
        Vector res = new Vector();

        //Variavel temporaria que armazenarah um unico filme
        Pessoa p;
        
        try{            
            st.execute( "select * from tipo");

            // Armazena o resultado da consulta na variavel 'rs'.
            rs = st.getResultSet();

            // Percorre o resultado da consulta
            // Por meio de sucessivas chamadas de 'rs.next()', as tuplas dos
            //   resultados sao percorridas. Cada chamada desse metodo retorna
            //   um valor booleano: true, se ainda houver tuplas nao percorridas
            //   e false, caso contrario

            while (rs.next()){
                p = new Pessoa (rs.getString(1),rs.getString(2),rs.getString(3), rs.getString(4));

                //Armazena o novo filme no vetor
                res.addElement(p);
            }
            
            }catch(SQLException e){
            e.printStackTrace();
        }
        
        return res;
        
        
    }
    
    public Vector buscarVisto(String rne, String classificacao){
        ResultSet rs = null;
        
        Vector res = new Vector();

        Visto v;
        
        try{
            st.execute( "select * from visto where rne like" + rne
                            + "and cast(classificacao as text) like" + classificacao);
            
            rs = st.getResultSet();
            
            while (rs.next()){
                
                v = new Visto (rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));

                //Armazena o novo filme no vetor
                res.addElement(v);
            }
            
            }catch(SQLException e){
            e.printStackTrace();
        }
        return res;  
    }
    
    public Vector buscarC1(String nome, String classificacao){
        ResultSet rs = null;
        
        Vector res = new Vector();

        Pessoa_c1 p;
        
        try{
            st.execute("select * from consulta1('%" + nome + "%', " + classificacao + ")");
            
            rs = st.getResultSet();
            
            while (rs.next()){
                
                p = new Pessoa_c1 (rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6));

                //Armazena o novo filme no vetor
                res.addElement(p);
            }
            
            }catch(SQLException e){
            e.printStackTrace();
        }
        return res;  
    }
}
