/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.bean.PedidoBean;
import com.bean.ProdutoBean;
import com.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;


/**
 *
 * @author bcustodio
 */
public class PedidoModel {
    /********************** MÉTODO PARA CRIAR O CARRINHO **********************/
    public List incluirCarrinho(List carrinho) {
        carrinho = new ArrayList();
        
        return carrinho;
    }
   
    /**************************************************************************/
    public void salvarCompra (PedidoBean ped)
    {
         Session session = HibernateUtil.getSessionFactory().openSession();
        // Inicia uma transação
        session.beginTransaction();
        
        // Realiza a operação salvar
        session.save(ped);
        
        // Comita a transação
        session.getTransaction().commit();
        
        // Libera a memória e encerra a sessão
        session.flush();
        session.close();
    }
     public List<PedidoBean> listarPedido() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        session.beginTransaction();
        
        Criteria ped  = session.createCriteria(PedidoBean.class);
        
        return ped.list();
    }
    
    
}