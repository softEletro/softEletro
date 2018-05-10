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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author leona
 */
@WebServlet(name = "AlterarFicha", urlPatterns = {"/AlterarFicha"})
public class AlterarFicha extends HttpServlet {
    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
 
    
       int idProduto = Integer.parseInt(req.getParameter("idProduto"));   
       
       FichaTecnicaModel dao= new FichaTecnicaModel();
        FichaTecnicaBean fic = dao.buscarId(idProduto);

        fic.setModelo(req.getParameter("modelo"));
        fic.setCor(req.getParameter("cor"));
        fic.setSistema(req.getParameter("sistema"));
        fic.setProcessador(req.getParameter("processador"));
        fic.setChip(req.getParameter("chip"));
        fic.setInterna(req.getParameter("interna"));
        fic.setRam(req.getParameter("ram"));
        fic.setDisplay(req.getParameter("display"));
        fic.setCamera(req.getParameter("camera"));
        fic.setBateria(req.getParameter("bateria"));
        
        dao.alteraFichaTecnica(fic);
    }
}
