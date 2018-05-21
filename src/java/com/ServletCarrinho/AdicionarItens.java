/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletCarrinho;

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
 * @author bcustodio
 */
@WebServlet(name = "AdicionarItens", urlPatterns = {"/AdicionarItens"})
public class AdicionarItens extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        HttpSession session = req.getSession();
        List carrinho = (List) session.getAttribute("carrinho");
        
        PedidoModel pedido = new PedidoModel();
        ProdutoModel dao = new ProdutoModel();
        
        int idProduto = Integer.parseInt(req.getParameter("idProduto"));
        
        List imagemx = new ArrayList();
        List nomex = new ArrayList();
        List precox = new ArrayList();
        
        if (carrinho == null) {
            List car = (List) pedido.incluirCarrinho(carrinho);
            car.add(idProduto);
            
            session.setAttribute("carrinho", car);
            
            ProdutoBean pro = dao.buscarId(idProduto);

            String imagem =  pro.getImagem();
            String nome =  pro.getNome();
            Double preco = pro.getPreco();

            imagemx.add(imagem);
            nomex.add(nome);
            precox.add(preco);

            req.setAttribute("nome", nomex);
            req.setAttribute("imagem", imagemx);
            req.setAttribute("preco", precox);
        } else {
            carrinho.add(idProduto);
            
            session.setAttribute("carrinho", carrinho);
            
            for (int i=0;i<carrinho.size();i++) {
                int id = (int) carrinho.get(i);
                ProdutoBean pro = dao.buscarId(id);

                String imagem =  pro.getImagem();
                String nome =  pro.getNome();
                Double preco = pro.getPreco();

                imagemx.add(imagem);
                nomex.add(nome);
                precox.add(preco);

                req.setAttribute("nome", nomex);
                req.setAttribute("imagem", imagemx);
                req.setAttribute("preco", precox);
            }
        }

        RequestDispatcher rd = req.getRequestDispatcher("/compraProduto.jsp");
        rd.forward(req,resp);
    }
}
