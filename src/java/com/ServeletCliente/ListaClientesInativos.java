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
import java.util.List;
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
@WebServlet(name = "ListaClientesInativos", urlPatterns = {"/ListaClientesInativos"})
public class ListaClientesInativos extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{ 
        ClienteBean cli = new ClienteBean();
        ClienteModel dao = new ClienteModel();
        List lista = dao.listarClientesInativos();
        
        req.setAttribute("lista", lista);
        
        RequestDispatcher rd = req.getRequestDispatcher("/BuscarCliente.jsp");
        rd.forward(req,resp);
    }
}
