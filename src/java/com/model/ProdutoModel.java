/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;
import java.sql.Statement;
import com.bean.ProdutoBean;
import com.util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 * Classe que possui os métodos de acesso ao banco de dados.
 * Com esta classe é possível armazenar diversos clientes e realizar o CRUD.
 * @author Brenda M. Custódio
 * @since Classe criada em 13/10/2016
 * Obs.: classe aprimorada em 20/10/2016
 */
public class ProdutoModel {    
    //Método para gravação do cliente no BD.
    public void salvarProduto (ProdutoBean pro){
        // Cria e abre uma sessão
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Inicia uma transação
        session.beginTransaction();
        
        // Realiza a operação salvar
        session.persist(pro);
        
        // Comita a transação
        session.getTransaction().commit();
        
        // Libera a memória e encerra a sessão
        session.flush();
        session.close();
    }    

    // Método para listagem de produtos.
    public List<ProdutoBean> listarProdutos() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        session.beginTransaction();
        
        Criteria Pro  = session.createCriteria(ProdutoBean.class);
        
        return Pro.list();
    }
    
    // Método de buscar pelo nome
    public List<ProdutoBean> buscarNome(String nome) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        
        Criteria crit = session.createCriteria(ProdutoBean.class)
                .add(Restrictions.like("nome",nome+"%"));
        
        return crit.list();
    }  
    
    // Método de buscar pelo id
    public ProdutoBean  buscarId(Long id) {        
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        return (ProdutoBean)session.createCriteria(ProdutoBean.class)
                .add(Restrictions.eq("id",id))
                .uniqueResult();
    }      

     // Altera o cliente.
    public void alterarProduto(ProdutoBean pro){
        // Cria e abre uma sessão
        Session session = HibernateUtil.getSessionFactory().openSession();
        // Inicia uma transação
        session.beginTransaction();
        
        // Realiza a operação salvar
        session.update(pro);
        
        // Comita a transação
        session.getTransaction().commit();
        
        // Libera a memória e encerra a sessão
        session.flush();
        session.close();        
    }  
    
      // Busca todos os registros ativos.
    public List<ProdutoBean> listarProdutoAtivos() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        session.beginTransaction();
        
        Criteria cli = session.createCriteria(ProdutoBean.class)
                .add(Restrictions.eq("ativo", "a"));
        
        return cli.list();
    }
    
    // Busca todos os registros inaativos.
    public List<ProdutoBean> listarProdutoInativos() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        session.beginTransaction();
        
        Criteria cli = session.createCriteria(ProdutoBean.class)
                .add(Restrictions.eq("ativo", "i"));
        
        return cli.list();
    }
  } // Fim da classe