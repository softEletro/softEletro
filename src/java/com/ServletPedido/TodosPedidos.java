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
@WebServlet(name = "TodosPedidos", urlPatterns = {"/TodosPedidos"})
public class TodosPedidos extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        PedidoModel dao = new PedidoModel();

        List lista = dao.buscarTodos();

        req.setAttribute("lista", lista);

        RequestDispatcher rd = req.getRequestDispatcher("/PedidosAdm.jsp");
        rd.forward(req,resp);
    }
}
