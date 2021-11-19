package entidades;

import entidades.Libro;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-11-12T20:19:22")
@StaticMetamodel(Editorial.class)
public class Editorial_ { 

    public static volatile SingularAttribute<Editorial, Integer> idEditorial;
    public static volatile SingularAttribute<Editorial, String> nombre;
    public static volatile CollectionAttribute<Editorial, Libro> libroCollection;

}