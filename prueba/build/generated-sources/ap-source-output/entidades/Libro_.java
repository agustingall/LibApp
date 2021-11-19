package entidades;

import entidades.Autor;
import entidades.Editorial;
import entidades.Genero;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-11-12T20:19:22")
@StaticMetamodel(Libro.class)
public class Libro_ { 

    public static volatile SingularAttribute<Libro, String> descripcion;
    public static volatile SingularAttribute<Libro, Integer> cantPag;
    public static volatile SingularAttribute<Libro, Long> peso;
    public static volatile SingularAttribute<Libro, Long> isbn;
    public static volatile SingularAttribute<Libro, String> formato;
    public static volatile SingularAttribute<Libro, String> titulo;
    public static volatile SingularAttribute<Libro, Editorial> idEdit;
    public static volatile SingularAttribute<Libro, String> urlImagen;
    public static volatile SingularAttribute<Libro, Long> precio;
    public static volatile SingularAttribute<Libro, String> disponibilidad;
    public static volatile SingularAttribute<Libro, Autor> idAutor;
    public static volatile SingularAttribute<Libro, Genero> idGenero;
    public static volatile SingularAttribute<Libro, Integer> edicion;

}