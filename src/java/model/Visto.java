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
public class Visto {
    String rne;
    String classificacao;
    String data_exped;
    String data_expir;
    String data_entr;
    
    public Visto(){
        this.rne = null;
        this.classificacao = null;
        this.data_exped = null;
        this.data_expir = null;
        this.data_entr = null;
    }
    
    public Visto(String rne, String classificacao, String data_exped, String data_expir, String data_entr){
        this.rne = rne;
        this.classificacao = classificacao;
        this.data_exped = data_exped;
        this.data_expir = data_expir;
        this.data_entr = data_entr;
    }
    
    public String getRne(){
        return rne;
    }
    
    public String getClassificacao(){
        return classificacao;
    }
    
    public String getDataExped(){
        return data_exped;
    }
    
    public String getDataExpir(){
        return data_expir;
    }
    
    public String getDataEntr(){
        return data_entr;
    }
    
    public void setRne(String rne){
        if(rne == null)
            this.rne = "%";
        else
            this.rne = rne;
    }
    
    public void setClassificacao(String classificacao){
        if(classificacao == null)
            this.classificacao = "%";
        else
            this.classificacao = classificacao;
    }
}
