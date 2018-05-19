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
 * @author leona
 */
@WebServlet(name = "Mostar", urlPatterns = {"/Mostar"})
public class Mostar extends HttpServlet {
  @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String nome = req.getParameter("nome");
        
                
        /* --------- BUSCA PRODUTO PARA PODER MOSTRAR ----------*/
        ProdutoModel dao= new ProdutoModel();
        ProdutoBean pro = new ProdutoBean();
        List lista = dao.buscarnome(nome);
        req.setAttribute("lista", lista);
        String imagem = pro.getImagem();
        Double preco = pro.getPreco();
        
        req.setAttribute("nome", nome);
        req.setAttribute("imagem", imagem);
        req.setAttribute("preco",new Double(preco));
        RequestDispatcher rd = req.getRequestDispatcher("/teste.jsp");
        rd.forward(req,resp);
    } 
}
