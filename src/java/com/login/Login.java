/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.bean.ClienteBean;
import com.model.ClienteModel;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bcustodio
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        HttpSession session = req.getSession();
        
        ClienteModel dao = new ClienteModel();
        
        String email   = req.getParameter("email");
        String senha   = req.getParameter("senha");
        
        // Verifica se os campos estão vazios
        if (!"".equals(email) && !"".equals(senha)) {
            // Faz a busca no banco de dados
            ClienteBean cli = dao.efetuarLogin(email,senha);
            
            // Verifica se o objeto retornou nulo.
            if (cli == null) {              
                
                session.setAttribute("retorno", "NotFound");
                
                resp.sendRedirect("index.jsp");
                
            } else {
                int id = cli.getId();
                String nome = cli.getNome();
                
                session.setAttribute("idUsuario", new Integer(id));
                session.setAttribute("logado", "Login");
                session.setAttribute("Usuario", "Bem Vindo " + nome);
                
                if (id == 999) {
                    resp.sendRedirect("indexAdm.jsp");
                } else {
                    resp.sendRedirect("index.jsp");
                }
            }
        } else {
            session.setAttribute("retorno", "Preenchimento");
            resp.sendRedirect("index.jsp");
        }
    }
}
