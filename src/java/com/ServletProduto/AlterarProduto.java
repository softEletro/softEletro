/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletProduto;

/**
 *
 * @author leona
 */
import com.bean.ProdutoBean;
import com.model.ProdutoModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author leona
 */
@WebServlet(name = "AlterarProduto", urlPatterns = {"/AlterarProduto"})
public class AlterarProduto extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{ 
        int id = Integer.parseInt(req.getParameter("id"));
           
        ProdutoModel dao= new ProdutoModel();
        ProdutoBean pro = dao.buscarId(id);
        
        pro.setProduto(req.getParameter("produto"));
        pro.setNome(req.getParameter("nome"));
        pro.setPreco(Double.parseDouble(req.getParameter("preco")));
        pro.setMarca(req.getParameter("marca"));
        pro.setQuantidade(Integer.parseInt(req.getParameter("quantidade")));
        pro.setDescricao(req.getParameter("descricao"));
        pro.setImagem(req.getParameter("imagem"));
        
        dao.alterarProduto(pro);
    }
}
