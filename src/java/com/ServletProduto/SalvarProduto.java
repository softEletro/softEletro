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

/**
 *
 * @author bcustodio
 */
@WebServlet(name = "SalvarProduto", urlPatterns = {"/SalvarProduto"})
public class SalvarProduto extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        ProdutoBean pro = new ProdutoBean();
        
        pro.setProduto(req.getParameter("produto"));
        pro.setNome(req.getParameter("nome"));
        pro.setMarca(req.getParameter("marca"));
        pro.setPreco(Double.parseDouble(req.getParameter("preco")));
        pro.setQuantidade(Integer.parseInt(req.getParameter("quantidade")));
        pro.setDescricao(req.getParameter("descricao"));
        pro.setImagem(req.getParameter("imagem"));
        pro.setAtivo("a");
        
        ProdutoModel dao = new ProdutoModel();
        dao.salvarProduto(pro);
        
        PrintWriter out = resp.getWriter();
        out.println("Salvo com sucesso!");
    }

}
