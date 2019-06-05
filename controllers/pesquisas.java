/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hskodama
 */
public class pesquisa extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response); 
        
        String c1_nome = request.getParameter("c1_nome");
        int c1_class = Integer.parseInt(request.getParameter("c1_class"));
        
        String c2_data = request.getParameter("c2_data");
        String c2_est = request.getParameter("c2_est");
        
        String pessoa_rne = request.getParameter("pessoa_rne");
        String pessoa_nome = request.getParameter("pessoa_nome");
        String pessoa_nac = request.getParameter("pessoa_nac");
        String pessoa_est = request.getParameter("pessoa_est");
        
        String visto_rne = request.getParameter("visto_rne");
        String visto_class = request.getParameter("visto_class");
        
        PrintWriter response_writer = response.getWriter();
        
        // Pesquisa avancada 1
        if(c1_nome != null && c1_class != 0){
            
        }
        
        // Pesquisa avancada 2
        else if(c2_data != null && c2_est != null){
            
        }
        
        // Pesquisa por pessoa
        else if(pessoa_rne != null || pessoa_nome != null || pessoa_nac != null || pessoa_est != null){
            
        }
        
        // Pesquisa por visto
        else if(visto_rne != null || visto_class != null){
            
        }
        
        // Caso as pesquisas tenham sido mal especificadas ##Verificar se isso sera tratado aqui##
        else{
            response_writer.print(this.buildPage(""));
        }
        response_writer.close();
    }
    
    private String buildPage(String user) {
    String page;
    if (user.isEmpty()) {
    page = "<!doctype html>"
            + "<html>"
            + "<head>"
            + "<meta charset=\"UTF-8\">"
            + "<title>Ride Share</title>"
            + "<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">"
            + "</head>"
            + "<body>"
            + "<header>"
            + "<h1><a href=\"index.jsp\">Ride Share</a></h1>"
            + "<nav>"
            + "<ul>"
            + "<li><a href=\"index.jsp\">Home</a></li>"
            + "<li><a href=\"./signup.jsp\">Sign up</a></li>"
            + "</ul>"
            + "</nav>"
            + "</header>"
            + "<section>"
            + "<article>"
            + "<h1>Incorrect Username or Password</h1>"
            + "</article>"
            + "</section>"
            + "<footer>"
            + "<p>Web Development - UFSCar Sorocaba - 2015</p>"
            + "</footer>"
            + "</body>"
            + "</html>";
  } else {
    page = "<!doctype html>"
            + "<html>"
            + "<head>"
            + "<meta charset=\"UTF-8\">"
            + "<title>Ride Share</title>"
            + "<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">"
            + "</head>"
            + "<body>"
            + "<header>"
            + "<h1><a href=\"index.jsp\">Ride Share</a></h1>"
            + "<nav>"
            + "<ul>"
            + "<li><a href=\"index.jsp\">Home</a></li>"
            + "<li><a href=\"./signup.jsp\">Sign up</a></li>"
            + "</ul>"
            + "</nav>"
            + "</header>"
            + "<section>"
            + "<article>"
            + "<h1>Welcome "+ user +"!</h1>"
            + "</article>"
            + "</section>"
            + "<footer>"
            + "<p>Web Development - UFSCar Sorocaba - 2015</p>"
            + "</footer>"
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
