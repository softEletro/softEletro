/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletProduto;

import com.bean.ProdutoBean;
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
 * @author BrendaÀ
 */
@WebServlet(name = "BuscarProdutoCli", urlPatterns = {"/BuscarProdutoCli"})
public class BuscarProdutoCli extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
        ProdutoBean Pro = new ProdutoBean();
        ProdutoModel dao = new ProdutoModel();
        
        String nome = req.getParameter("nome");
        String produto =  req.getParameter("categoria");
        
        if ("2".equals(produto)) {
            List lista = dao.buscarComputador(nome, produto);
            req.setAttribute("lista", lista);
        } else {
            List lista = dao.buscarCelular(nome, produto);
            req.setAttribute("lista", lista);
        }
        
        RequestDispatcher rd = req.getRequestDispatcher("/categorias.jsp");
        rd.forward(req,resp);
    }
}
