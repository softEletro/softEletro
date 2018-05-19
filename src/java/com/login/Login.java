/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.bean.ClienteBean;
import com.model.ClienteModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
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
        ClienteModel dao = new ClienteModel();
        
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        
        // Verifica se os campos estão vazios
        if (!"".equals(email) && !"".equals(senha)) {
            // Faz a busca no banco de dados
            ClienteBean cli = dao.efetuarLogin(email,senha);
            
            // Verifica se o objeto retornou nulo.
            if (cli == null) {
                req.setAttribute("msg","true");
                
                RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
                rd.forward(req,resp);
            } else {
                int id = cli.getId();
                
                HttpSession session = req.getSession();
                session.setAttribute("idUsuario", new Integer(id));
                session.setAttribute("logado", "Login");
                
                if (id == 999) {
                    resp.sendRedirect("indexAdm.jsp");
                } else {
                    resp.sendRedirect("index.jsp");
                }
            }
        } else {
            PrintWriter out = resp.getWriter();
            out.print("<script>alert(\"Preencha todos os campos!\");</script>");
        }
    }
}
