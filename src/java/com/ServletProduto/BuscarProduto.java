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
@WebServlet(name = "BuscarProduto", urlPatterns = {"/BuscarProduto"})
public class BuscarProduto extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
        ProdutoBean Pro = new ProdutoBean();
        ProdutoModel dao = new ProdutoModel();
        
        if (req.getParameter("nome") != "") {
            String nome = req.getParameter("nome");

            List lista = dao.buscarNome(nome); 
            req.setAttribute("lista", lista); 
        } else if (req.getParameter("preco") != "") {            
            Double preco = Double.parseDouble(req.getParameter("preco"));

            List lista = dao.buscarPreco(preco); 
            req.setAttribute("lista", lista); 
        }
        
        RequestDispatcher rd = req.getRequestDispatcher("/BuscarProduto.jsp");
        rd.forward(req,resp);
    }
}
