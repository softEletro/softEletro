/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletCarrinho;

import com.bean.PedidoBean;
import com.bean.ProdutoBean;
import com.model.PedidoModel;
import com.model.ProdutoModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author leona
 */
@WebServlet(name = "MostrarCompra", urlPatterns = {"/MostrarCompra"})
public class MostrarCompra extends HttpServlet {
@Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        HttpSession session = req.getSession();
        ProdutoModel dao = new ProdutoModel();
        List carrinho = (List) session.getAttribute("carrinho");
        List nomex = new ArrayList();
        List quantidadex = new ArrayList();
        List precox = new ArrayList();

        for (int i=0;i<carrinho.size();i++) {
            int idProduto = (int) carrinho.get(i);
             
             ProdutoBean pro = dao.buscarId(idProduto);
           
            String nome =  pro.getNome();
            int quantidade = pro.getQuantidade();
            Double preco = pro.getPreco();

            nomex.add(nome);
            precox.add(preco);
        }

        req.setAttribute("nome", nomex);
        req.setAttribute("preco", precox);
        RequestDispatcher rd = req.getRequestDispatcher("/newjsp.jsp");
        rd.forward(req,resp);
    }
}
