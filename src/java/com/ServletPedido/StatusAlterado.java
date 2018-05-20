/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletPedido;

import com.bean.PedidoBean;
import com.model.PedidoModel;
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
 * @author leona
 */
@WebServlet(name = "StatusAlterado", urlPatterns = {"/StatusAlterado"})
public class StatusAlterado extends HttpServlet {

   @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int idCliente = Integer.parseInt(req.getParameter("idCliente"));  
        PedidoModel dao = new PedidoModel();
        PedidoBean ped = dao.buscarId(idCliente);

        ped.setStatus("Transportadora");
        
        
        
        dao.alterarPedido(ped);
        
         RequestDispatcher rd = req.getRequestDispatcher("VendaProduto.jsp");
         rd.forward(req,resp);
    }
}
