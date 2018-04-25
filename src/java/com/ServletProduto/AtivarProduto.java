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
 * @author leona
 */
@WebServlet(name = "AtivarProduto", urlPatterns = {"/AtivarProduto"})
public class AtivarProduto extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Long id = Long.parseLong(req.getParameter("id"));
        
        ProdutoModel dao= new ProdutoModel();
        ProdutoBean pro = dao.buscarId(id);
        
        pro.setAtivo("a");
        
        dao.alterarProduto(pro);
        
        PrintWriter out = resp.getWriter();
        out.print("<script>alert(\"Produto ativado com sucesso!\");</script>");
    }
}
