/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServeletCliente;

import com.bean.ClienteBean;
import com.model.ClienteModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bcustodio
 */
@WebServlet(name = "InativarCliente", urlPatterns = {"/InativarCliente"})
public class InativarCliente extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int id = Integer.parseInt(req.getParameter("id"));
        
        ClienteModel dao= new ClienteModel();
        ClienteBean cli = dao.buscarId(id);
        
        cli.setAtivo("i");
        
        dao.alteraCliente(cli);
        
        PrintWriter out = resp.getWriter();
        out.print("<script>alert(\"Cliente desativado com sucesso!\");</script>");
    }
}
