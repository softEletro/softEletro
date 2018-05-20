/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletPedido;

import com.bean.PedidoBean;
import com.bean.ProdutoBean;
import com.model.PedidoModel;
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
@WebServlet(name = "MostrarPedido", urlPatterns = {"/MostrarPedido"})
public class MostrarPedido extends HttpServlet {
 @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int idCliente = Integer.parseInt(req.getParameter("idCliente"));
        PedidoModel dao = new PedidoModel();
        PedidoBean ped = dao.buscarId(idCliente);
        
        ProdutoModel dao2 = new ProdutoModel();
        ProdutoBean pro = dao2.buscarId(idCliente);
        String nome = pro.getNome();
        
        req.setAttribute("idCliente",new Integer(idCliente));
        req.setAttribute("nomeProduto", nome);
        
        int id = ped.getIdProduto();
        String nomeProduto = ped.getNomeProduto();
        Double preco = ped.getPreco();
        int quantidade = pro.getQuantidade();
        String numero = ped.getNumero();
        String status = ped.getStatus();
            
          
        
        req.setAttribute("idProduto", id);
        req.setAttribute("nomeProduto",nomeProduto);
        req.setAttribute("numero",numero);
        req.setAttribute("status",status);
        req.setAttribute("quantidade",new Integer(quantidade));
        req.setAttribute("preco",new Double(preco));
   
    }	

}
