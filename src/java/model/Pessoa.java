/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author hskodama
 */
public class Pessoa {
    String rne;
    String nome;
    String nacionalidade;
    String estado;
    
    public String getRne(){
        return rne;
    }
    
    public String getNome(){
        return nome;
    }
    
    public String getNacionalidade(){
        return nacionalidade;
    }
    
    public String getEstado(){
        return estado;
    }
    
    public void setRne(String rne){
        this.rne = rne;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public void setNacionalidade(String nacionalidade){
        this.nacionalidade = nacionalidade;
    }
    
    public void setEstado(String estado){
        this.estado = estado;
    }
}
