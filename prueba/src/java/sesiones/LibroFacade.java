/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sesiones;

import entidades.Libro;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author agust
 */
@Stateless
public class LibroFacade extends AbstractFacade<Libro> {

    @PersistenceContext(unitName = "pruebaPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
    public Libro findLibroByISBN(Long isbn){
        Libro libro = this.getEntityManager().createNamedQuery("Libro.findByIsbn", Libro.class).setParameter("isbn", isbn).getResultList().get(0) ;
        return  libro;         
    }

    public LibroFacade() {
        super(Libro.class);
    }
    
    
}

