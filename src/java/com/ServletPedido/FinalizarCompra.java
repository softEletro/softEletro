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
@WebServlet(name = "FinalizarCompra", urlPatterns = {"/FinalizarCompra"})
public class FinalizarCompra extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        HttpSession session = req.getSession();
        
        List carrinho = (List) session.getAttribute("carrinho");
        
        PedidoModel dao1 = new PedidoModel();
        PedidoBean ped = new PedidoBean ();
        ProdutoModel dao = new ProdutoModel();
        
        String numero = "3223";
        for(int x=0;x<carrinho.size();x++)
        {
            numero = numero.concat("c");
        }

        for (int i=0;i<carrinho.size();i++) {
            int id = (int) carrinho.get(i);
            ProdutoBean pro = dao.buscarId(id);
            
            String nomeProduto = pro.getNome();
            Double preco =  pro.getPreco();
            
            ped.setIdProduto(id);
            ped.setNomeProduto(nomeProduto);
            ped.setIdCliente(Integer.parseInt(req.getParameter("idCliente")));
            ped.setPreco(preco);
            ped.setQuantidade(Integer.parseInt(req.getParameter("quantidade")));
            ped.setNumero(numero);
            ped.setStatus("Pedido Feito");
            
            dao1.salvarCompra(ped);            
        }
        
        session.removeAttribute("carrinho");
        
        RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
        rd.forward(req,resp);
    }
}
