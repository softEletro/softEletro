/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ServletFicha;

import com.bean.FichaTecnicaBean;
import com.model.FichaTecnicaModel;
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
        
        FichaTecnicaModel dao= new FichaTecnicaModel();
        FichaTecnicaBean fic = dao.buscarId(idProduto);
        req.setAttribute("idProduto",new Integer(idProduto));
        req.setAttribute("nomeProduto", "buguei");
        
        if(fic==null){
            RequestDispatcher rd = req.getRequestDispatcher("/CadastrarFicha.jsp");
            rd.forward(req,resp);
        } else {   
            int id = fic.getId();
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

            req.setAttribute("id", id);
            req.setAttribute("modelo",modelo);
            req.setAttribute("cor",cor);
            req.setAttribute("sistema",sistema);
            req.setAttribute("processador", processador);
            req.setAttribute("chip", chip);
            req.setAttribute("interna", interna);
            req.setAttribute("ram", ram);
            req.setAttribute("display", display);
            req.setAttribute("camera", camera);
            req.setAttribute("bateria", bateria);
            
            RequestDispatcher rd = req.getRequestDispatcher("/AlterarFicha.jsp");
            rd.forward(req,resp);
        }
    }
}
