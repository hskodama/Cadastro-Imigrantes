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
import model.Pessoa;
import model.Pessoa_c1;
import model.Pessoa_c2;
import model.Visto;

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
            new_user.setClassificaco(c1_class);
        }
        
        // Pesquisa avancada 2
        else if(c2_data != null && c2_est != null){
            Pessoa_c2 new_user = new Pessoa_c2();
            new_user.setData(c2_data);
            new_user.setEstado(c2_est);
        }
        
        // Pesquisa por pessoa
        else if(pessoa_rne != null || pessoa_nome != null || pessoa_nac != null || pessoa_est != null){
            Pessoa new_user = new Pessoa();
            
            if(pessoa_rne != null){
                new_user.setRne(pessoa_rne);
            }
            
            if(pessoa_nome != null){
                new_user.setNome(pessoa_nome);
            }
            
            if(pessoa_nac != null){
                new_user.setNacionalidade(pessoa_nac);
            }
            
            if(pessoa_est != null){
                new_user.setEstado(pessoa_est);
            }
        }
        
        // Pesquisa por visto
        else if(visto_rne != null || visto_class != null){
            Visto new_user = new Visto();
            
            if(visto_rne != null){
                new_user.setRne(visto_rne);
            }
            
            if(visto_class != null){
                new_user.setClassificacao(visto_class);
            }
        }
        
        // Caso as pesquisas tenham sido mal especificadas ##Verificar se isso sera tratado aqui##
        else{
            response_writer.print(this.buildPage(""));
        }
        response_writer.close();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response); 
        
        
        
    }
    
    private String buildPage(String user) {
    String page;
    if (user.isEmpty()) {
    page = "<!doctype html>"
            + "<html>"
            + "<head>"
            + "<meta charset=\"UTF-8\">"         
            + "</head>"
            + "<body>"
            + "<h1>Hello World</h1>"
            + "</body>"
            + "</html>";
  } else {
    page = "<!doctype html>"
            + "<html>"
            + "<head>"
            + "<meta charset=\"UTF-8\">"         
            + "</head>"
            + "<body>"
            + "<h1>Hello World</h1>"
            + "</body>"
            + "</html>";
  }
 
  return page;
}   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet pesquisa</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet pesquisa at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
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
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
