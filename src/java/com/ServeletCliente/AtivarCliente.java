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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bcustodio
 */
@WebServlet(name = "AtivarCliente", urlPatterns = {"/AtivarCliente"})
public class AtivarCliente extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int id = Integer.parseInt(req.getParameter("id"));
        
        ClienteModel dao= new ClienteModel();
        ClienteBean cli = dao.buscarId(id);
        
        cli.setAtivo("a");
        
        dao.alteraCliente(cli);
        
        RequestDispatcher rd = req.getRequestDispatcher("ListaCliente");
        rd.forward(req,resp);
    }
}
