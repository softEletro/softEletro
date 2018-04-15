/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServeletCliente;

import com.bean.ClienteBean;
import com.model.ClienteModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author bcustodio
 */
@WebServlet(name = "SalvarCliente", urlPatterns = {"/SalvarCliente"})
public class SalvarCliente extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        ClienteBean cli = new ClienteBean();
        cli.setNome(req.getParameter("nome"));
        cli.setSobrenome(req.getParameter("sobrenome"));
        cli.setCpf(req.getParameter("Cpf"));
        cli.setTelefone(req.getParameter("telefone"));
        cli.setCep(req.getParameter("cep"));
        cli.setEndereco(req.getParameter("endereco"));
        cli.setNumero(Integer.parseInt(req.getParameter("numero")));
        cli.setComplemento(req.getParameter("complemento"));
        cli.setEstado(req.getParameter("estado"));
        cli.setCidade(req.getParameter("cidade"));
        cli.setBairro(req.getParameter("bairro"));
        cli.setEmail(req.getParameter("email"));
        cli.setSenha(req.getParameter("senha"));
        
        ClienteModel dao = new ClienteModel();
        dao.salvarNovoCliente(cli);
        
        PrintWriter out = resp.getWriter();
        out.println("Salvo com sucesso!");
    }

}
