/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletFicha;

import com.bean.ProdutoBean;
import com.model.ProdutoModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bcustodio
 */
@WebServlet(name = "MostrarFicha", urlPatterns = {"/MostrarFicha"})
public class MostrarFicha extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int idProduto = Integer.parseInt(req.getParameter("idProduto"));
        
        ProdutoModel dao= new ProdutoModel();
        ProdutoBean pro = dao.buscarId(idProduto);
        
        String nome = pro.getNome();
        
        req.setAttribute("nome", nome);
        req.setAttribute("idProduto", idProduto);
            
        RequestDispatcher rd = req.getRequestDispatcher("/FichaTecnica.jsp");
        rd.forward(req,resp);
    }
}
