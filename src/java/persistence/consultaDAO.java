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
            myConnection = DriverManager.getConnection("jdbc:postgresql:" + "//localhost/CadastroEstrangeiro", "postgres", "1234");
            st = myConnection.createStatement();
        }
        catch(SQLException e){
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
            // Envia uma consulta que retornarah todos os elementos
            //   da tabela Filme, armazenados no SGBD.
            st.executeQuery( "select rne, nome, nacionalidade, estado_mora from pessoa" +
                        "where rne like" + rne +
                        "and nome like" + nome +
                        "and nacionalidade like" + nacionalidade +
                        "and estado_mora like" + estado_mora);

            // Armazena o resultado da consulta na variavel 'rs'.
            rs = st.getResultSet();

            // Percorre o resultado da consulta
            // Por meio de sucessivas chamadas de 'rs.next()', as tuplas dos
            //   resultados sao percorridas. Cada chamada desse metodo retorna
            //   um valor booleano: true, se ainda houver tuplas nao percorridas
            //   e false, caso contrario

            while (rs.next()){
                //Recupera os atributos de cada tupla pelo seu indice
                //  e cria um nova instancia da classe Filme
                //  1 - Titulo
                //  2 - Diretor
                //  3 - Genero
                p = new Pessoa (rs.getString(1),rs.getString(2),rs.getString(3), rs.getString(4));

                //Armazena o novo filme no vetor
                res.addElement(p);
            }
            
            }catch(SQLException e){
            e.printStackTrace();
        }
        
        return res;
        
        
    }
}
