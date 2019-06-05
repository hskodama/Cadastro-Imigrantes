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
    
    public String getRne(){
        return rne;
    }
    
    public String getClassificacao(){
        return classificacao;
    }
    
    public void setRne(String rne){
        this.rne = rne;
    }
    
    public void setClassificacao(String classificacao){
        this.classificacao = classificacao;
    }
}
