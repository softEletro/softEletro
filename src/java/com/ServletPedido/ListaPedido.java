/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletPedido;

import com.bean.ClienteBean;
import com.bean.PedidoBean;
import com.model.ClienteModel;
import com.model.PedidoModel;
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
 * @author leona
 */
@WebServlet(name = "ListaPedido", urlPatterns = {"/ListaPedido"})
public class ListaPedido extends HttpServlet {
     @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        PedidoBean Pro = new PedidoBean();
        PedidoModel dao = new PedidoModel();
        
        int idCliente = Integer.parseInt(req.getParameter("idCliente"));
        
        List lista = dao.listarPedido(idCliente);
        
        ClienteModel dao1 = new ClienteModel();
        ClienteBean cli = dao1.buscarId(idCliente);
        
        req.setAttribute("lista", lista);
        req.setAttribute("nome", cli.getNome());
        req.setAttribute("sobrenome", cli.getSobrenome());
        
        RequestDispatcher rd = req.getRequestDispatcher("/historicoCliente.jsp");
        rd.forward(req,resp);
    }
}
