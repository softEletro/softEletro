/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletCarrinho;

import com.bean.ProdutoBean;
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
 * @author bcustodio
 */
@WebServlet(name = "MostrarCarrinho", urlPatterns = {"/MostrarCarrinho"})
public class MostrarCarrinho extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        HttpSession session = req.getSession();
        List carrinho = (List) session.getAttribute("carrinho");
        
        //if (carrinho != null) {
        ProdutoModel dao= new ProdutoModel();

        List imagemx = new ArrayList();
        List nomex = new ArrayList();
        List quantidadex = new ArrayList();
        List precox = new ArrayList();

        for (int i=0;i<carrinho.size();i++) {
            int id = (int) carrinho.get(i);
            ProdutoBean pro = dao.buscarId(id);

            String imagem =  pro.getImagem();
            String nome =  pro.getNome();
            int quantidade = pro.getQuantidade();
            Double preco = pro.getPreco();

            imagemx.add(imagem);
            nomex.add(nome);
            quantidadex.add(quantidade);
            precox.add(preco);
        }

        req.setAttribute("nome", nomex);
        req.setAttribute("imagem", imagemx);
        req.setAttribute("quantidade", quantidadex);
        req.setAttribute("preco", precox);
        //} else { }

        RequestDispatcher rd = req.getRequestDispatcher("/testecar.jsp");
        rd.forward(req,resp);
    }
}
