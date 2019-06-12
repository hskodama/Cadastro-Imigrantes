<%-- 
    Document   : Visto_Pessoa
    Created on : Jun 4, 2019, 11:30:28 PM
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
        <link rel="stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <%
            String rne = request.getParameter("rne");
            if(rne != null){
                Connection myConnection;
                Statement st;
                Class.forName("org.postgresql.Driver");
                myConnection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/CadastroEstrangeiro","postgres","123456");
                st = myConnection.createStatement();

                ResultSet rs = null;

                //Vetor de elementos do tipo Filme
                Vector res = new Vector();

                //Variavel temporaria que armazenarah um unico filme
                VP p;

                String query;
                try{           
                    query = "SELECT * FROM pessoa, visto where pessoa.rne = visto.rne and pessoa.rne = '" + rne + "'";

                    st.execute(query);

                    // Armazena o resultado da consulta na variavel 'rs'.
                    rs = st.getResultSet();

                    // Percorre o resultado da consulta
                    // Por meio de sucessivas chamadas de 'rs.next()', as tuplas dos
                    //   resultados sao percorridas. Cada chamada desse metodo retorna
                    //   um valor booleano: true, se ainda houver tuplas nao percorridas
                    //   e false, caso contrario

                    while (rs.next()){

                        p = new VP (rs.getString("rne"), rs.getString("nome"), rs.getString("nome_pai"), rs.getString("nome_mae"), rs.getString("nacionalidade"), rs.getString("estado_mora"), rs.getString("passaporte"), rs.getString(8), rs.getString(9), rs.getString("classificacao"), rs.getString(12), rs.getString(13),rs.getString(14));

                        //Armazena o novo filme no vetor
                        res.addElement(p);
                    }

                    }catch(SQLException e){
                    e.printStackTrace();
                }

                Vector array_aux_vp = res; 
                Object[] aux = array_aux_vp.toArray(new VP[array_aux_vp.size()]);
                VP[] pesquisa_vp= Arrays.copyOf(aux, aux.length, VP[].class);
               
        %>
        <nav class="navbar nav sticky-top">
            <ul>
                <li>
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li>
                    <a class="nav-link" href="Pessoas.jsp">Pessoas</a>
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
                    <a class="active" href="Visualizacao.jsp">Visualização</a> 
                </li>
            </ul>
        </nav>
        <section class="container cont w-100 p-3">
            <div class="item" style="width: 33%;"><%-- Visto --%>
                <section class="item" id="visto">
                    <div id="foto">
                    </div>
                    <ul class="info">
                        <li >RNE: <%out.print(rne);%></li>
                        <li >Classificação: <%out.print(pesquisa_vp[0].getClassificacao());%></li>
                        <li >Data de Expedição: <%out.print(pesquisa_vp[0].getData_exped_visto());%></li>
                        <li >Data de Expiração: <%out.print(pesquisa_vp[0].getData_expir_visto());%></li>
                        <li >Data de Entrada: <%out.print(pesquisa_vp[0].getData_entr_visto());%></li>
                    </ul>
                    <div class="container">
                        <div style="width: 79%">
                        </div>
                        <h2 id="text-visto">
                            Visto
                        </h2>
                    </div>


                </section>
            </div>
            <div class="item container w-100 p-3" id="infoPessoa"><%-- Pessoa --%>
                <ul class="info">
                    <li >Nome: <%out.print(pesquisa_vp[0].getNome());%></li>
                    <li >Nome da Mãe: <%out.print(pesquisa_vp[0].getNome_mae());%></li>
                    <li >Estado Residente: <%out.print(pesquisa_vp[0].getEstado_mora());%></li>
                    <li >Data de Expedição: <%out.print(pesquisa_vp[0].getData_exped_passaporte());%></li>
                    <li >Data de Expiração: <%out.print(pesquisa_vp[0].getData_expir_passaporte());%></li>
                </ul>
                <div class="container center">
                    <div id="chaveIMG"style="transform: rotateY(180deg); ">
                    </div>
                    <div id="pessoaIMG">
                    </div>
                    <div id="chaveIMG">
                    </div>
                </div>
                <ul class="info">
                    <li >Passaporte: <%out.print(pesquisa_vp[0].getPassaporte());%></li>
                    <li >Nome do Pai: <%out.print(pesquisa_vp[0].getNome_pai());%></li>
                    <li >Nacionalidade: <%out.print(pesquisa_vp[0].getNacionalidade());%></li>
                </ul>
            </div>
        </section>
        <%}%>
        <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
    </body>
</html>

