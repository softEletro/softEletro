/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletPedido;

import com.bean.ClienteBean;
import com.bean.PedidoBean;
import com.bean.ProdutoBean;
import com.model.ClienteModel;
import com.model.PedidoModel;
import com.model.ProdutoModel;
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
@WebServlet(name = "MostrarPedido", urlPatterns = {"/MostrarPedido"})
public class MostrarPedido extends HttpServlet {
 @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
       PedidoBean Pro = new PedidoBean();
       PedidoModel dao = new PedidoModel();
       
        String numero =req.getParameter("numero");
        List lista = dao.buscanumero(numero);
        
      
        req.setAttribute("lista", lista);
       
        
        RequestDispatcher rd = req.getRequestDispatcher("/venda.jsp");
        rd.forward(req,resp);
    }	

}
