/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Gabriel Peres de Andrade 726517
 */
public class Tipo {
    private String tipo;
    private String quantidade;

    public Tipo(String tipo, String quantidade) {
        switch(tipo)
        {
            case "1":
                this.tipo = "Transporte";
            break;
            case "2":
                this.tipo = "Turismo";
            break;
            case "3":
                this.tipo = "Cultural/Missão de Estudos";
            break;
            case "4":
                this.tipo = "Negócios";
            break;
            case "5":
                this.tipo = "Artista/Desportistas";
            break;
            case "6":
                this.tipo = "Estudante";
            break;
            case "7":
                this.tipo = "Trabalho";
            break;
            case "8":
                this.tipo = "Jornalista";
            break;
            case "9":
                this.tipo = "Religioso";
            break;
            case "10":
                this.tipo = "Permanente";
            break;
            case "11":
                this.tipo = "Cortesia";
            break;
            case "12":
                this.tipo = "Oficial";
            break;

        }                                 
        this.quantidade = quantidade;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }
    
}
