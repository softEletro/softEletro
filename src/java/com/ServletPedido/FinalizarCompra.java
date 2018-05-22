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
import java.util.Random;
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
        int idCliente = (int) session.getAttribute("idUsuario");
        
        PedidoModel dao1 = new PedidoModel();
        PedidoBean ped = new PedidoBean ();
        ProdutoModel dao = new ProdutoModel();
        
        int numero = dao1.numero();

        for (int i=0;i<carrinho.size();i++) {
            int id = (int) carrinho.get(i);
            ProdutoBean pro = dao.buscarId(id);
            
            String nomeProduto = pro.getNome();
            Double preco =  pro.getPreco();
            
            ped.setIdProduto(id);
            ped.setNomeProduto(nomeProduto);
            ped.setIdCliente(idCliente);
            ped.setPreco(preco);
            ped.setQuantidade(Integer.parseInt(req.getParameter("quantidade"+i)));
            ped.setNumero(numero);
            ped.setStatus("Pedido Feito");
            
            int qtd = pro.getQuantidade() - 1;
            pro.setQuantidade(qtd);
            dao.alterarProduto(pro);
            
            dao1.salvarCompra(ped);            
        }
        
        session.removeAttribute("carrinho");
        
        RequestDispatcher rd = req.getRequestDispatcher("ListaPedido?idCliente="+idCliente);
        rd.forward(req,resp);
    }
}
