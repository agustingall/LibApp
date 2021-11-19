package entidades;

import entidades.Libro;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-11-12T20:19:22")
@StaticMetamodel(Genero.class)
public class Genero_ { 

    public static volatile SingularAttribute<Genero, String> nomGen;
    public static volatile SingularAttribute<Genero, Integer> idGenero;
    public static volatile CollectionAttribute<Genero, Libro> libroCollection;

}