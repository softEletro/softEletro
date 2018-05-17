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
@WebServlet(name = "RemoverItens", urlPatterns = {"/RemoverItens"})
public class RemoverItens extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        HttpSession session = req.getSession();
        List carrinho = (List) session.getAttribute("carrinho");
        
        List imagemx = new ArrayList();
        List nomex = new ArrayList();
        List quantidadex = new ArrayList();
        List precox = new ArrayList();
        
        int idProduto = Integer.parseInt(req.getParameter("idProduto"));
      
        for (int i=0; i<carrinho.size(); i++) {
            if (carrinho.get(i).equals(idProduto)) {
                carrinho.remove(i);
            }
        }
       
        session.setAttribute("carrinho", carrinho);
        
        ProdutoModel dao = new ProdutoModel();

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

                req.setAttribute("nome", nomex);
                req.setAttribute("imagem", imagemx);
                req.setAttribute("quantidade", quantidadex);
                req.setAttribute("preco", precox);
        }
        
        if (carrinho.isEmpty()) {
            RequestDispatcher rd = req.getRequestDispatcher("ListaCliente");
            rd.forward(req,resp);
        } else {
            RequestDispatcher rd = req.getRequestDispatcher("/compraProduto.jsp");
            rd.forward(req,resp);
        }
    }
}
