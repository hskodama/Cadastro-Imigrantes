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
            Class.forName("org.postgresql.Driver");
            myConnection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/CadastroEstrangeiro","postgres","123456");
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
        
        String query;
        try{           
            query = "SELECT rne, nome, nacionalidade, estado_mora FROM pessoa WHERE ";
            query+= "nome LIKE '" + nome + "' ";
            query+= "AND rne LIKE '" + rne + "' ";
            query+= "AND nacionalidade LIKE '" + nacionalidade + "' ";
            query+= "AND estado_mora LIKE '" + estado_mora + "' LIMIT 10000";
            
            st.execute(query);
            
            // Armazena o resultado da consulta na variavel 'rs'.
            rs = st.getResultSet();

            // Percorre o resultado da consulta
            // Por meio de sucessivas chamadas de 'rs.next()', as tuplas dos
            //   resultados sao percorridas. Cada chamada desse metodo retorna
            //   um valor booleano: true, se ainda houver tuplas nao percorridas
            //   e false, caso contrario

            while (rs.next()){
               
                p = new Pessoa (rs.getString("rne"),rs.getString("nome"),rs.getString("nacionalidade"), rs.getString("estado_mora"));
                
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
        
        String query;
        
        try{
            query =  "SELECT * FROM visto WHERE rne LIKE '" + rne;
            query+= "' AND CAST(classificacao as text) LIKE '" + classificacao + "' LIMIT 10000";
            st.execute(query);
            
            rs = st.getResultSet();
            
            while (rs.next()){
                
                v = new Visto (rs.getString("rne"),rs.getString("classificacao"),rs.getString("data_exped"),rs.getString("data_expir"),rs.getString("data_entr"));

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
        
        String query;
        try{
            query = "select * from consulta1('%" + nome + "%', " + classificacao + ")";
            st.execute(query);
            
            rs = st.getResultSet();
            
            while (rs.next()){
                
                p = new Pessoa_c1 (rs.getString("rne"),rs.getString("nome"),rs.getString("classificacao"),rs.getString("data_expedicao"),rs.getString("data_expiracao"), rs.getString("estado_mora"));

                //Armazena o novo filme no vetor
                res.addElement(p);
            }
            
            }catch(SQLException e){
            e.printStackTrace();
        }
        return res;  
    }
    
    public Vector buscarC2(String tempoLimite, String estado){
        ResultSet rs = null;
        
        Vector res = new Vector();

        Pessoa_c2 p;
        
        String query;
        try{
            query = "select * from consulta2('" + tempoLimite + "', '" + estado + "')";
            st.execute(query);
            
            rs = st.getResultSet();
            
            while (rs.next()){
                
                p = new Pessoa_c2 (rs.getString("rne"),rs.getString("nome"),rs.getString("nacionalidade"),rs.getString("data_expedicao"),rs.getString("data_expiracao"), rs.getString("tempo_limite"));

                //Armazena o novo filme no vetor
                res.addElement(p);
            }
            
            }catch(SQLException e){
            e.printStackTrace();
        }
        return res;  
    }
}
