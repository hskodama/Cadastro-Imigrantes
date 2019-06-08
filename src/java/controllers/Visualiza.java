/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import model.Tipo;
import persistence.*;
import java.util.Vector;

/**
 *
 * @author Gabriel Peres
 */
public class Visualiza extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        consultaDAO consulta = new consultaDAO(); 
        
        PrintWriter response_writer = response.getWriter();
        
        Vector exibe = consulta.buscarTipo();
        
        request.setAttribute("pesquisa_Tipo", exibe);

        RequestDispatcher dispatcher = null;
        dispatcher = request.getRequestDispatcher("./Visualizacao.jsp");
        dispatcher.forward(request, response);
        response_writer.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
