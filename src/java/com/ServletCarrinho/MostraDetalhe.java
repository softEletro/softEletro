/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletCarrinho;

import com.bean.FichaTecnicaBean;
import com.bean.ProdutoBean;
import com.model.FichaTecnicaModel;
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
@WebServlet(name = "MostraDetalhe", urlPatterns = {"/MostraDetalhe"})
public class MostraDetalhe extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int id = Integer.parseInt(req.getParameter("id"));
        
        /* --------- BUSCA PRODUTO PARA PODER MOSTRAR ----------*/
        ProdutoModel dao= new ProdutoModel();
        ProdutoBean pro = dao.buscarId(id);
        
        String nome = pro.getNome();
        String produto = pro.getProduto();
        String marca = pro.getMarca();
        String descricao = pro.getDescricao();
        String imagem = pro.getImagem();
        String imagem2 = pro.getImagem2();
        int quantidade = pro.getQuantidade();
        Double preco = pro.getPreco();
        
        if (quantidade == 0) {
            req.setAttribute("quantidade","Indisponível");
        } else {
            req.setAttribute("quantidade",quantidade+" em estoque");
        }
        
        req.setAttribute("idProduto", id);
        req.setAttribute("nome", nome);
        req.setAttribute("produto", produto);
        req.setAttribute("marca", marca);
        req.setAttribute("descricao", descricao);
        req.setAttribute("imagem", imagem);
        req.setAttribute("imagem2", imagem2);
        req.setAttribute("preco",new Double(preco));
        req.setAttribute("id", id);
        
        /* --------- BUSCA FICHA TÉCNICA PARA PODER MOSTRAR ----------*/
        FichaTecnicaModel dao2 = new FichaTecnicaModel();
        FichaTecnicaBean fic = dao2.buscarId(id);
        
        if (fic != null) {
        String modelo = fic.getModelo();
        String cor = fic.getCor();
        String sistema = fic.getSistema();
        String processador = fic.getProcessador();
        String chip = fic.getChip();
        String interna = fic.getInterna();
        String ram = fic.getRam();
        String display = fic.getDisplay();
        String camera = fic.getCamera();
        String bateria = fic.getBateria();
        
        switch (chip) {
            case "1":
                req.setAttribute("chip", "Chip");
                break;
            case "2":
                req.setAttribute("chip", "Micro chip");
                break;
            case "3":
                req.setAttribute("chip", "Nano chip");
                break;
                
        }
        
        req.setAttribute("modelo", modelo);
        req.setAttribute("cor", cor);
        req.setAttribute("sistema", sistema);
        req.setAttribute("processador", processador);
        req.setAttribute("chip", chip);
        req.setAttribute("interna", interna);
        req.setAttribute("ram", ram);
        req.setAttribute("display", display);
        req.setAttribute("camera", camera);
        req.setAttribute("bateria", bateria);
        }
            
        RequestDispatcher rd = req.getRequestDispatcher("/DetalheProduto.jsp");
        rd.forward(req,resp);
    }
}
