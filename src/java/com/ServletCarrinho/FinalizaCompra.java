/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletCarrinho;

import com.bean.PedidoBean;
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
 * @author bcustodio
 */
@WebServlet(name = "FinalizaCompra", urlPatterns = {"/FinalizaCompra"})
public class FinalizaCompra extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        // CÓDIGO VEM AQUI, JÁ TÁ CERTO!!!!
        PedidoBean  Pro = new PedidoBean ();
        PedidoModel dao = new PedidoModel();
        int idCliente = Integer.parseInt(req.getParameter("idCliente"));
        List carrinho = dao.buscarIdPedido(idCliente);
        req.setAttribute("List", carrinho);
            
        RequestDispatcher rd = req.getRequestDispatcher("VendaProduto.html");
        rd.forward(req,resp);
    }
    
}
