/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author agust
 */
@Entity
@Table(name = "libro", catalog = "libapp", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Libro.findAll", query = "SELECT l FROM Libro l"),
    @NamedQuery(name = "Libro.findByIsbn", query = "SELECT l FROM Libro l WHERE l.isbn = :isbn"),
    @NamedQuery(name = "Libro.findByTitulo", query = "SELECT l FROM Libro l WHERE l.titulo = :titulo"),
    @NamedQuery(name = "Libro.findByCantPag", query = "SELECT l FROM Libro l WHERE l.cantPag = :cantPag"),
    @NamedQuery(name = "Libro.findByPrecio", query = "SELECT l FROM Libro l WHERE l.precio = :precio"),
    @NamedQuery(name = "Libro.findByDisponibilidad", query = "SELECT l FROM Libro l WHERE l.disponibilidad = :disponibilidad"),
    @NamedQuery(name = "Libro.findByPeso", query = "SELECT l FROM Libro l WHERE l.peso = :peso"),
    @NamedQuery(name = "Libro.findByFormato", query = "SELECT l FROM Libro l WHERE l.formato = :formato"),
    @NamedQuery(name = "Libro.findByEdicion", query = "SELECT l FROM Libro l WHERE l.edicion = :edicion")})
public class Libro implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "isbn", nullable = false)
    private Long isbn;
    @Size(max = 150)
    @Column(name = "titulo", length = 150)
    private String titulo;
    @Column(name = "cant_pag")
    private Integer cantPag;
    @Column(name = "precio")
    private Long precio;
    @Size(max = 10)
    @Column(name = "disponibilidad", length = 10)
    private String disponibilidad;
    @Basic(optional = false)
    @NotNull
    @Column(name = "peso", nullable = false)
    private long peso;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "formato", nullable = false, length = 30)
    private String formato;
    @Basic(optional = false)
    @NotNull
    @Column(name = "edicion", nullable = false)
    private int edicion;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "descripcion", nullable = false, length = 65535)
    private String descripcion;
    @Lob
    @Size(max = 65535)
    @Column(name = "urlImagen", length = 65535)
    private String urlImagen;
    @JoinColumn(name = "id_edit", referencedColumnName = "id_editorial")
    @ManyToOne
    private Editorial idEdit;
    @JoinColumn(name = "id_autor", referencedColumnName = "id_autor")
    @ManyToOne
    private Autor idAutor;
    @JoinColumn(name = "id_genero", referencedColumnName = "id_genero", nullable = false)
    @ManyToOne(optional = false)
    private Genero idGenero;

    public Libro() {
    }

    public Libro(Long isbn) {
        this.isbn = isbn;
    }

       public Libro(Long isbn, String nombre, int cant_pag, Long precio, String disponibilidad, Editorial editorial, Genero genero, Autor autor,long peso, String formato, int edicion, String descripcion, String urlImagen ) {
        this.isbn = isbn;
        this.titulo = nombre;
        this.cantPag = cant_pag;
        this.precio = precio;
        this.disponibilidad = disponibilidad;
        this.idGenero = genero;
        this.idAutor = autor;
        this.idEdit = editorial;
        this.peso = peso;
        this.formato = formato;
        this.edicion = edicion;
        this.descripcion = descripcion;
        this.urlImagen = urlImagen;
    }


    public Long getIsbn() {
        return isbn;
    }

    public void setIsbn(Long isbn) {
        this.isbn = isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getCantPag() {
        return cantPag;
    }

    public void setCantPag(Integer cantPag) {
        this.cantPag = cantPag;
    }

    public Long getPrecio() {
        return precio;
    }

    public void setPrecio(Long precio) {
        this.precio = precio;
    }

    public String getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(String disponibilidad) {
        this.disponibilidad = disponibilidad;
    }

    public long getPeso() {
        return peso;
    }

    public void setPeso(long peso) {
        this.peso = peso;
    }

    public String getFormato() {
        return formato;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public int getEdicion() {
        return edicion;
    }

    public void setEdicion(int edicion) {
        this.edicion = edicion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getUrlImagen() {
        return urlImagen;
    }

    public void setUrlImagen(String urlImagen) {
        this.urlImagen = urlImagen;
    }

    public Editorial getIdEdit() {
        return idEdit;
    }

    public void setIdEdit(Editorial idEdit) {
        this.idEdit = idEdit;
    }

    public Autor getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(Autor idAutor) {
        this.idAutor = idAutor;
    }

    public Genero getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(Genero idGenero) {
        this.idGenero = idGenero;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (isbn != null ? isbn.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Libro)) {
            return false;
        }
        Libro other = (Libro) object;
        if ((this.isbn == null && other.isbn != null) || (this.isbn != null && !this.isbn.equals(other.isbn))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Libro[ isbn=" + isbn + " ]";
    }
    
}
