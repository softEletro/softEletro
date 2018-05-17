/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.bean.PedidoBean;
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
    public List<PedidoBean> buscarIdPedido(int idCliente) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
          Criteria crit = session.createCriteria(PedidoBean.class)
                .add(Restrictions.eq("id",idCliente));
        
        return crit.list();
    }
    /**************************************************************************/
}
