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
public class VP {
    String rne;
    String nome;
    String nome_pai;
    String nome_mae;
    String nacionalidade;
    String estado_mora;
    String passaporte;
    String data_exped_passaporte;
    String data_expir_passaporte;
    String classificacao;
    String data_exped_visto;
    String data_expir_visto;
    String data_entr_visto;
    
    
    public VP(){
        this.rne = null;
        this.classificacao = null;
        this.data_exped_visto = null;
        this.data_expir_visto = null;
        this.nome = null;
        this.nome_mae = null;
        this.nome_pai = null;
        this.estado_mora = null;
        this.nacionalidade = null;
        this.passaporte = null;
        this.data_exped_passaporte = null;
        this.data_expir_passaporte = null;
        this.data_entr_visto = null;
    }

    public VP(String rne, String nome, String nome_pai, String nome_mae, String nacionalidade, String estado_mora, String passaporte, String data_exped_passaporte, String data_expir_passaporte, String classificacao, String data_exped_visto, String data_expir_visto, String data_entr_visto) {
        this.rne = rne;
        this.nome = nome;
        this.nome_pai = nome_pai;
        this.nome_mae = nome_mae;
        this.nacionalidade = nacionalidade;
        this.estado_mora = estado_mora;
        this.passaporte = passaporte;
        this.data_exped_passaporte = data_exped_passaporte;
        this.data_expir_passaporte = data_expir_passaporte;
        this.classificacao = classificacao;
        this.data_exped_visto = data_exped_visto;
        this.data_expir_visto = data_expir_visto;
        this.data_entr_visto = data_entr_visto;
    }

    

    public String getRne() {
        return rne;
    }

    public String getClassificacao() {
        return classificacao;
    }

    public String getData_exped_visto() {
        return data_exped_visto;
    }

    public String getData_expir_visto() {
        return data_expir_visto;
    }

    public String getNome() {
        return nome;
    }

    public String getNome_mae() {
        return nome_mae;
    }

    public String getNome_pai() {
        return nome_pai;
    }

    public String getEstado_mora() {
        return estado_mora;
    }

    public String getNacionalidade() {
        return nacionalidade;
    }

    public String getPassaporte() {
        return passaporte;
    }

    public String getData_exped_passaporte() {
        return data_exped_passaporte;
    }

    public String getData_expir_passaporte() {
        return data_expir_passaporte;
    }

    public String getData_entr_visto() {
        return data_entr_visto;
    }
    
    
}
