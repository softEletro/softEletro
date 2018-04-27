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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author leona
 */
@WebServlet(name = "MostrarProduto", urlPatterns = {"/MostrarProduto"})
public class MostrarProduto extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{ 
        Long id = Long.parseLong(req.getParameter("id"));
        
        ProdutoModel dao= new ProdutoModel();
        ProdutoBean pro = dao.buscarId(id);
        
        String nome = pro.getNome();
        String produto = pro.getProduto();
        String marca = pro.getMarca();
        String descricao = pro.getDescricao();
        String imagem = pro.getImagem();
        int quantidade = pro.getQuantidade();
        Double preco = pro.getPreco();
        
        req.setAttribute("nome", nome);
        req.setAttribute("produto", produto);
        req.setAttribute("marca", marca);
        req.setAttribute("descricao", descricao);
         req.setAttribute("imagem", imagem);
        req.setAttribute("quantidade",new Integer(quantidade));
        req.setAttribute("preco",new Double(preco));
        req.setAttribute("id", id);
            
        RequestDispatcher rd = req.getRequestDispatcher("/AlterarProduto.jsp");
        rd.forward(req,resp);
    }
}
