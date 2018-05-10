/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import com.bean.FichaTecnicaBean;
import com.bean.ProdutoBean;
import com.util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author leona
 */
public class FichaTecnicaModel {
    public void salvarFicha(FichaTecnicaBean fic){
        // Cria e abre uma sessão
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Inicia uma transação
        session.beginTransaction();
        
        // Realiza a operação salvar
        session.saveOrUpdate(fic);
        
        // Comita a transação
        session.getTransaction().commit();
        
        // Libera a memória e encerra a sessão
        session.flush();
        session.close();        
    }
    
    public FichaTecnicaBean buscarId(int idProduto) {        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        return (FichaTecnicaBean)session.createCriteria(FichaTecnicaBean.class)
                .add(Restrictions.eq("idProduto",idProduto))
                .uniqueResult();
    }
    public void alteraFichaTecnica(FichaTecnicaBean fic){
        // Cria e abre uma sessão
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Inicia uma transação
        session.beginTransaction();
        
        // Realiza a operação salvar
        session.update(fic);
        
        // Comita a transação
        session.getTransaction().commit();
        
        // Libera a memória e encerra a sessão
        session.flush();
        session.close();        
    }  
}
