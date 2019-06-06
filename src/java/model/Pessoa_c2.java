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
    String nacionalidade;
    String data_expedicao;
    String data_expiracao;
    String tempo_limite;
    String input_tempo;
    String input_estado;
    
    public Pessoa_c2(){
        this.rne = null;
        this.nome = null;
        this.nacionalidade = null;
        this.data_expedicao = null;
        this.data_expiracao = null;
        this.tempo_limite = null;
        this.input_tempo = null;
        this.input_estado = null;
    }
    
    public Pessoa_c2(String rne, String nome, String nacionalidade, String data_exped, String data_expir, String tempo_limite){
        this.rne = rne;
        this.nome = nome;
        this.nacionalidade = nacionalidade;
        this.data_expedicao = data_exped;
        this.data_expiracao = data_expir;
        this.tempo_limite = tempo_limite;
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
    
    public String getDataExped(){
        return data_expedicao;
    }
    
    public String getDataExpir(){
        return data_expiracao;
    }
    
    public String getTempoLimite(){
        return tempo_limite;
    }
    
    public String getInputEstado(){
        return input_estado;
    }
    
    public String getInputTempo(){
        return input_tempo;
    }
    
    public void setTempo(String tempo){
        this.input_tempo = tempo;
    }
    
    public void setEstado(String estado){
        this.input_estado = estado;
    }
}
