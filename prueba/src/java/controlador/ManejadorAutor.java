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
import java.util.List;
import sesiones.AutorFacade;
import sesiones.GeneroFacade;

/**
 *
 * @author agust
 */
@WebServlet(name = "ManejadorAutor", loadOnStartup = 1,
        urlPatterns = {
            "/crearAutor",
        "/createAutor",
        
})
        
public class ManejadorAutor extends HttpServlet {
    @EJB
    private EditorialFacade e;
    @EJB 
    private AutorFacade a;
    //private LibroFacade l;
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
            
            switch (pathUsuario){
                case "/crearAutor":     
                    url = "vista/administrador" + pathUsuario + "/index.html";
                    System.out.println("sadad");
                    break; 
                    
                case "/createAutor":
                    String nombre = request.getParameter("nombre");
                    String apellido = request.getParameter("apellido");
                    List<Autor> l = a.findAll();
                    int id = l.get(l.size()-1).getIdAutor()+ 1;
                    Autor autor = new Autor(id, nombre, apellido);
                    a.create(autor);
                    System.out.println("Hecho");
                    url = "vista/administrador" + "/crearAutor" + "/index.html";
                    System.out.println(url);
                    break; 
                    
               
                
            }
            try {request.getRequestDispatcher(url).forward(request, response);  }
            catch (ServletException | IOException ex){ 
            
            } 
        }
        catch ( SecurityException | IllegalStateException ex) {
            Logger.getLogger(ManejadorAutor.class.getName()).log(Level.SEVERE, null, ex);
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
