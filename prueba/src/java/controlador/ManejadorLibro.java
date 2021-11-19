/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import entidades.Autor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sesiones.EditorialFacade;
import entidades.Editorial;
import entidades.Genero;
import entidades.Libro;
import java.util.List;
import sesiones.AutorFacade;
import sesiones.GeneroFacade;
import sesiones.LibroFacade;

/**
 *
 * @author agust
 */
@WebServlet(name = "ManejadorLibro", loadOnStartup = 1,
        urlPatterns = {
            "/crearLibro",
        "/createLibro",
       "/detalles"
        
})
        
public class ManejadorLibro extends HttpServlet {
    @EJB
    private EditorialFacade e;
    @EJB 
    private AutorFacade a;
    @EJB
    private LibroFacade l;
    @EJB
    GeneroFacade g;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String pathUsuario = request.getServletPath();
            String url = "";
            request.setAttribute("editoriales",  e.findAll());
            request.setAttribute("autores",  a.findAll());
            request.setAttribute("generos",  g.findAll());
            switch (pathUsuario){
                case "/crearLibro":     
                    url = "vista/administrador" + pathUsuario + "/index.jsp";
                    
                    System.out.println(url);
                    break; 
                    
                case "/createLibro":
                    response.setContentType("text/html;charset=UTF-8");
                    String nombre = request.getParameter("nombre");
                    Long isbn = Long.parseLong(request.getParameter("isbn"));
                    int cant_pag = Integer.parseInt(request.getParameter("cant_pag"));
                    Long precio = Long.parseLong(request.getParameter("precio"));
                    
                    String disponibilidad = request.getParameter("disponibilidad");
                    int id_edit = Integer.parseInt(request.getParameter("editorial"));
                    Editorial editorial = e.find(id_edit);
                    
                    int id_autor = Integer.parseInt(request.getParameter("autor"));
                    Autor autor = a.find(id_autor);
                    
                    int id_genero = Integer.parseInt(request.getParameter("genero"));
                    Genero genero = g.find(id_genero);
                    
                    long peso = Long.parseLong(request.getParameter("peso"));
                    String formato = request.getParameter("formato");
                    int edicion = Integer.parseInt(request.getParameter("edicion"));
                    String descripcion = request.getParameter("descripcion"); 
                    
                    String urlImagen = request.getParameter("urlImagen"); 
                    
                    System.out.println(genero.toString());
                    Libro libro = new Libro(isbn, nombre, cant_pag,precio, disponibilidad, editorial, genero, autor, peso,  formato,  edicion,  descripcion, urlImagen ) ;
                    System.out.println("imprimiendo " + libro.getIdGenero());
                    l.create(libro);
                    url = "vista/administrador" + "/crearLibro" + "/index.jsp";
                    System.out.println(url);
                    break; 
                
                case "/detalles":
                    Long id = Long.parseLong(request.getParameter("id"));
                    Libro x = l.findLibroByISBN(id);
                    System.out.println(x);
                    request.setAttribute("libro", x);
                    url = "vista/cliente" + pathUsuario + "/index.jsp";
                    break;
               
                
            }
            try {request.getRequestDispatcher(url).forward(request, response);  }
            catch (ServletException | IOException ex){ 
            
            } 
        }
        catch ( SecurityException | IllegalStateException ex) {
            Logger.getLogger(ManejadorLibro.class.getName()).log(Level.SEVERE, null, ex);
        }        finally { System.out.println("Proceso finalzado"); }
            
        }
        
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
