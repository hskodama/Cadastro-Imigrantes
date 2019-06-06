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
import model.Pessoa;
import model.Pessoa_c1;
import model.Pessoa_c2;
import model.Visto;
import persistence.*;
import java.util.Vector;

/**
 *
 * @author hskodama
 */
public class Pesquisa extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        consultaDAO consulta = new consultaDAO();
        
        String c1_nome = request.getParameter("c1_nome");
        String str = request.getParameter("c1_class");
        int c1_class ;
        if (str == null)
            c1_class=0;
        else
            c1_class = Integer.parseInt(str);
        
        String c2_data = request.getParameter("c2_data");
        String c2_est = request.getParameter("c2_est");
        
        String pessoa_rne = request.getParameter("pessoa_rne");
        String pessoa_nome = request.getParameter("pessoa_nome");
        String pessoa_nac = request.getParameter("pessoa_nac");
        String pessoa_est = request.getParameter("pessoa_est");
        
        String visto_class = request.getParameter("visto_class");
        String visto_rne = request.getParameter("visto_rne");
        
        PrintWriter response_writer = response.getWriter();
        
        // Pesquisa avancada 1
        if(c1_nome != null && c1_class != 0){
            Pessoa_c1 new_user = new Pessoa_c1();
            new_user.setNome(c1_nome);
            new_user.setClass(Integer.toString(c1_class));
            
            Vector exibe = consulta.buscarC1(new_user.getNome(), new_user.getClassificacao());
            
            request.setAttribute("pesquisa_c1", exibe);
    
            RequestDispatcher dispatcher = null;
            dispatcher = request.getRequestDispatcher("./Pesquisa.jsp");
            dispatcher.forward(request, response);
        }
        
        // Pesquisa avancada 2
        else if(c2_data != null && c2_est != null){
            Pessoa_c2 new_user = new Pessoa_c2();
            new_user.setTempo(c2_data);
            new_user.setEstado(c2_est);
            
            Vector exibe = consulta.buscarC2(new_user.getInputTempo(), new_user.getInputEstado());
            
            request.setAttribute("pesquisa_c2", exibe);
    
            RequestDispatcher dispatcher = null;
            dispatcher = request.getRequestDispatcher("./Pesquisa.jsp");
            dispatcher.forward(request, response);
        }
        
        // Pesquisa por pessoa
        else if(pessoa_rne != null || pessoa_nome != null || pessoa_nac != null || pessoa_est != null){
            Pessoa new_user = new Pessoa();
            new_user.setRne(pessoa_rne);
            new_user.setNome(pessoa_nome);
            new_user.setNacionalidade(pessoa_nac);
            new_user.setEstado(pessoa_est);
            
            Vector exibe = consulta.buscarPessoa(new_user.getRne(), new_user.getNome(), new_user.getNacionalidade(), new_user.getEstado());
            
            request.setAttribute("pesquisa_pessoa", exibe);
    
            RequestDispatcher dispatcher = null;
            dispatcher = request.getRequestDispatcher("./Pesquisa.jsp");
            dispatcher.forward(request, response);
        }
        
        // Pesquisa por visto
        else if(visto_rne != null || visto_class != null){
            Visto new_user = new Visto();
            new_user.setClassificacao(visto_class);
            new_user.setRne(visto_rne);
            
            Vector exibe = consulta.buscarVisto(new_user.getRne(), new_user.getClassificacao());
            
            request.setAttribute("pesquisa_visto", exibe);
    
            RequestDispatcher dispatcher = null;
            dispatcher = request.getRequestDispatcher("./Pesquisa.jsp");
            dispatcher.forward(request, response);
        }
        
        // Caso as pesquisas tenham sido mal especificadas ##Verificar se isso sera tratado aqui##
        else{
            response.sendRedirect("./index.jsp");
        }
        response_writer.close();
    }
}   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
