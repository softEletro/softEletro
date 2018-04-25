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
@WebServlet(name = "ListaProdutoInativos", urlPatterns = {"/ListaProdutoInativos"})
public class ListaProdutoInativos extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{ 
        ProdutoBean Pro = new ProdutoBean();
        ProdutoModel dao = new ProdutoModel();
        List lista = dao.listarProdutoInativos();
        
        req.setAttribute("lista", lista);
        
        RequestDispatcher rd = req.getRequestDispatcher("/BuscarProduto.jsp");
        rd.forward(req,resp);
    }

}
