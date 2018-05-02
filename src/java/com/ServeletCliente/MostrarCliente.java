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
import java.text.NumberFormat;
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
@WebServlet(name = "MostrarCliente", urlPatterns = {"/MostrarCliente"})
public class MostrarCliente extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{ 
        Long id = Long.parseLong(req.getParameter("id"));
        
        ClienteModel dao= new ClienteModel();
        ClienteBean cli = dao.buscarId(id);
        
        String nome = cli.getNome();
        String sobrenome = cli.getSobrenome();
        String sexo = cli.getSexo();
        String cpf = cli.getCpf();
        String telefone =  cli.getTelefone();
        String cep = cli.getCep();
        String endereco = cli.getEndereco();
        int numero = cli.getNumero();
        String complemento = cli.getComplemento();
        String estado = cli.getEstado();
        String cidade = cli.getCidade();
        String bairro = cli.getBairro();
        String email = cli.getEmail();
        String senha = cli.getSenha();
        
        req.setAttribute("id", id);
        req.setAttribute("nome", nome);
        req.setAttribute("sobrenome", sobrenome);
        req.setAttribute("sexo", sexo);
        req.setAttribute("cpf", cpf);
        req.setAttribute("telefone", telefone);
        req.setAttribute("cep", cep);
        req.setAttribute("endereco", endereco);
        req.setAttribute("numero",new Integer(numero));
        req.setAttribute("complemento", complemento);
        req.setAttribute("estado", estado);
        req.setAttribute("cidade", cidade);
        req.setAttribute("bairro", bairro);
        req.setAttribute("email", email);
        req.setAttribute("senha", senha);
            
        RequestDispatcher rd = req.getRequestDispatcher("/AlterarCliente.jsp");
        rd.forward(req,resp);
    }
}
