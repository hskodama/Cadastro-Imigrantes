<%-- 
    Document   : Pessoa
    Created on : Jun 4, 2019, 11:31:10 PM
    Author     : hskodama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<%@page import="java.util.Vector"%>
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
        <script>$(document).ready(function(){
            $('#table_pessoas').DataTable();
            });
        </script>
        <script>
            function visu(){
            //$.post("Pessoas");
            var postFormStr = "<form method='POST' action='Pessoas'>\n";
            postFormStr += "</form>";
            var formElement = $(postFormStr);
            $('body').append(formElement);
            $(formElement).submit();  
          }
          function carrega(){
            <%if (request.getAttribute("pesquisa_Pessoas")== null){%>
              visu();
            <%}%>
          }
        </script>

    </head>
    <body onload="carrega()">
        <nav class="navbar nav sticky-top">
            <ul>
                <li>
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li>
                    <a class="active" href="Pessoas.jsp">Pessoas</a>
                </li>
                <li>
                    <a class="nav-link" href="Vistos.jsp">Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Pesquisa.jsp">Pesquisas</a>
                </li>
                <li>
                    <a class="nav-link" href="Visualizacao.jsp">Visualização</a> 
                </li>
            </ul>
        </nav>
        
         <%
            Vector array_aux_Pessoas = (Vector) request.getAttribute("pesquisa_Pessoas");
            if(array_aux_Pessoas != null){
                Object[] aux = array_aux_Pessoas.toArray(new Pessoa[array_aux_Pessoas.size()]);
                Pessoa[] pesquisa_pessoa = Arrays.copyOf(aux, aux.length,Pessoa[].class);      
        %>
        
        <div class="cont">
            <div id="tabela">
                <table id="table_pessoas" class="display hover table table-striped table-bordered table-fixed" style="width: 90%">
                    <thead>
                        <tr>
                            <th>RNE</th>
                            <th>Nome</th>
                            <th>Nacionalidade</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for(int i = 0 ; i < array_aux_Pessoas.size(); i++){
                        %>
                            <tr onclick='rne("<%out.print(pesquisa_pessoa[i].getRne());%>")'>
                                <td><%out.print(pesquisa_pessoa[i].getRne());%></td>
                                <td><%out.print(pesquisa_pessoa[i].getNome());%></td>
                                <td><%out.print(pesquisa_pessoa[i].getNacionalidade());%></td>
                                <td><%out.print(pesquisa_pessoa[i].getEstado());%></td>
                            </tr>
                        <%
                            }
                        %>

                    </tbody>
                </table>
                <%}%>
                        
                <script type='text/javascript'>
                    function rne(rne){
                        window.location.replace("/TrabalhoIntegrado/Visto_Pessoa.jsp?rne=" + rne);
                        
                    }
                </script> 
            </div>
        </div>
        
    	<script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>

    </body>
</html>

