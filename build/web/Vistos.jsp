<%-- 
    Document   : Vistos
    Created on : Jun 4, 2019, 11:29:55 PM
    Author     : hskodama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Imigrantes</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-4.0.0-dist/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        
        <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
        
        <script>
            $(document).ready( function () {
                $('#table_vistos').DataTable();
            } );
        </script>
    </head>
    <body>
        <nav class="navbar nav sticky-top">
            <ul>
                <li>
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li>
                    <a class="nav-link" href="Pessoas.jsp">Pessoas</a>
                </li>
                <li>
                    <a class="active" href="Vistos.jsp">Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Pesquisa.jsp">Pesquisas</a>
                </li>
                <li>
                    <a class="nav-link" href="Visto_Pessoa.jsp">Visualização</a> 
                </li>
            </ul>
        </nav>
        
        <%
        Connection myConnection;
        Statement st;
        Class.forName("org.postgresql.Driver");
        myConnection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/CadastroEstrangeiro","postgres","123456");
        st = myConnection.createStatement();
        
        ResultSet rs = null;
        
        //Vetor de elementos do tipo Filme
        Vector res = new Vector();

        //Variavel temporaria que armazenarah um unico filme
        Visto v;
        
        String query;
        try{
            query =  "SELECT * FROM visto LIMIT 1000";
            st.execute(query);
            
            rs = st.getResultSet();
            
            while (rs.next()){
                
                v = new Visto (rs.getString("rne"),rs.getString("classificacao"),rs.getString("data_exped"),rs.getString("data_expir"),rs.getString("data_entr"));

                //Armazena o novo filme no vetor
                res.addElement(v);
            }
            
            }catch(SQLException e){
            e.printStackTrace();
        }
        Vector array_aux_visto = res; 
        Object[] aux = array_aux_visto.toArray(new Visto[array_aux_visto.size()]);
        Visto[] pesquisa_visto = Arrays.copyOf(aux, aux.length, Visto[].class);
        %>
        
        <div class="cont">
            <div id="tabela">
                <table id="table_vistos" class="display hover table table-striped table-bordered" style="width: 90%">
                    <thead>
                        <tr>
                            <th>RNE</th>
                            <th>Classificação</th>
                            <th>Data de Expedição</th>
                            <th>Data de Expiração</th>
                            <th>Data de Entrada</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for(int i = 0 ; i < array_aux_visto.size() ; i++){
                        %>
                            <tr onclick='teste("<%out.print(pesquisa_visto[i].getRne());%>")'>
                                <td><%out.print(pesquisa_visto[i].getRne());%></td>
                                <td><%out.print(pesquisa_visto[i].getClassificacao());%></td>
                                <td><%out.print(pesquisa_visto[i].getDataExped());%></td>
                                <td><%out.print(pesquisa_visto[i].getDataExpir());%></td>
                                <td><%out.print(pesquisa_visto[i].getDataEntr());%></td>
                            </tr>
                        <%
                            }
                        %>

                    </tbody>
                </table>
            </div>

        </div>
    	<script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
        <script type='text/javascript'>
            function teste(rne){
                window.location.replace("/TrabalhoIntegrado/Visto_Pessoa.jsp?rne=" + rne);                    
                <!--alert(rne)-->
            }
        </script> 
    </body>

