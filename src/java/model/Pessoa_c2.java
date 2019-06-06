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
public class Pessoa_c2 {
    String rne;
    String nome;
    String classificacao;
    String data_expedicao;
    String data_expiracao;
    String estado;
    
    public Pessoa_c2(){
        this.rne = null;
        this.nome = null;
        this.classificacao = null;
        this.data_expedicao = null;
        this.data_expiracao = null;
        this.estado = null;
    }
    
    public Pessoa_c2(String rne, String nome, String classificacao, String data_exped, String data_expir, String estado){
        this.rne = rne;
        this.nome = nome;
        this.classificacao = classificacao;
        this.data_expedicao = data_exped;
        this.data_expiracao = data_expir;
        this.estado = estado;
    }
    
    public String getrne(){
        return rne;
    }
    
    public String getNome(){
        return nome;
    }
    
    public String getClassificacao(){
        return classificacao;
    }
    
    public String getDataExped(){
        return data_expedicao;
    }
    
    public String getDataExpir(){
        return data_expiracao;
    }
    
    public String getEstado(){
        return estado;
    }
    
    public void setEstado(String estado){
        this.estado = estado;
    }
}
