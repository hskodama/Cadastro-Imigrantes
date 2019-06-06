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
    
    public Pessoa(){
        this.rne = null;
        this.nome = null;
        this.nacionalidade = null;
        this.estado = null;
    }
    
    public Pessoa(String rne, String nome, String nacionalidade, String estado){
        this.rne = rne;
        this.nome = nome;
        this.nacionalidade = nacionalidade;
        this.estado = estado;
    }
    
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
        if (rne.isEmpty())
            this.rne = "%";
        else 
            this.rne = rne;
    }
    
    public void setNome(String nome){
        if(nome.isEmpty())
            this.nome = "%";
        else
            this.nome = nome;
    }
    
    public void setNacionalidade(String nacionalidade){
        if(nacionalidade.isEmpty())
            this.nacionalidade = "%";
        else
            this.nacionalidade = nacionalidade;
    }
    
    public void setEstado(String estado){
        if(estado.isEmpty())
            this.estado = "%";
        else            
            this.estado = estado;
    }
    
}
