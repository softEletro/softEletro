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
@WebServlet(name = "PedidoEntregue", urlPatterns = {"/PedidoEntregue"})
public class PedidoEntregue extends HttpServlet {

   @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int numero = Integer.parseInt(req.getParameter("numero"));  
        
        PedidoModel dao = new PedidoModel();
        
        List lista = dao.buscanumero(numero);

        for (int i=0; i<lista.size(); i++) {
            PedidoBean ped = (PedidoBean)lista.get(i);
            ped.setStatus("Entregue");
            
            dao.alterarPedido(ped);
        }
        
        req.setAttribute("lista", lista);
        
         RequestDispatcher rd = req.getRequestDispatcher("TodosPedidos");
         rd.forward(req,resp);
    }
}
