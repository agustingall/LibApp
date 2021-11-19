/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author agust
 */
@Entity
@Table(name = "autor", catalog = "libapp", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Autor.findAll", query = "SELECT a FROM Autor a"),
    @NamedQuery(name = "Autor.findByIdAutor", query = "SELECT a FROM Autor a WHERE a.idAutor = :idAutor"),
    @NamedQuery(name = "Autor.findByNomAut", query = "SELECT a FROM Autor a WHERE a.nomAut = :nomAut"),
    @NamedQuery(name = "Autor.findByApellAutor", query = "SELECT a FROM Autor a WHERE a.apellAutor = :apellAutor")})
public class Autor implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_autor", nullable = false)
    private Integer idAutor;
    @Size(max = 180)
    @Column(name = "nom_aut", length = 180)
    private String nomAut;
    @Size(max = 180)
    @Column(name = "apell_autor", length = 180)
    private String apellAutor;
    @OneToMany(mappedBy = "idAutor")
    private Collection<Libro> libroCollection;

    public Autor() {
    }

    public Autor(Integer idAutor) {
        this.idAutor = idAutor;
    }
    
    public Autor(Integer idAutor, String nombre, String apellido) {
        this.idAutor = idAutor;
        this.nomAut = nombre;
        this.apellAutor = apellido;
    }

    public Integer getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(Integer idAutor) {
        this.idAutor = idAutor;
    }

    public String getNomAut() {
        return nomAut;
    }

    public void setNomAut(String nomAut) {
        this.nomAut = nomAut;
    }

    public String getApellAutor() {
        return apellAutor;
    }

    public void setApellAutor(String apellAutor) {
        this.apellAutor = apellAutor;
    }
        
    public String getNombreCompleto(){
        return this.nomAut + " " + this.apellAutor;
    }
    
    @XmlTransient
    public Collection<Libro> getLibroCollection() {
        return libroCollection;
    }

    public void setLibroCollection(Collection<Libro> libroCollection) {
        this.libroCollection = libroCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idAutor != null ? idAutor.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Autor)) {
            return false;
        }
        Autor other = (Autor) object;
        if ((this.idAutor == null && other.idAutor != null) || (this.idAutor != null && !this.idAutor.equals(other.idAutor))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Autor[ idAutor=" + idAutor + " ]";
    }
    
}
