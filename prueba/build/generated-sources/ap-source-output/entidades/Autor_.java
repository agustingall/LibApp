package entidades;

import entidades.Libro;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-11-12T20:19:22")
@StaticMetamodel(Autor.class)
public class Autor_ { 

    public static volatile SingularAttribute<Autor, Integer> idAutor;
    public static volatile SingularAttribute<Autor, String> nomAut;
    public static volatile CollectionAttribute<Autor, Libro> libroCollection;
    public static volatile SingularAttribute<Autor, String> apellAutor;

}