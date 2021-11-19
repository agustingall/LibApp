/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.Tags;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author agust
 */
public class ManejadorHeader extends SimpleTagSupport {

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");
            out.write("<header>\n" +
"        <div class=\"logo\">\n" +
"            <span class=\"iconify logo-svg\" data-icon=\"ant-design:book-outlined\"></span>\n" +
"            <h1>LibApp</h1>\n" +
"        </div>\n" +
"        <ul class=\"\">\n" +
"            <li class=\"\">\n" +
"                <a href=\"localhost:8080\"><span class=\"iconify nav-svg\" data-icon=\"ant-design:home-outlined\"></span>Inicio</a></li>\n" +
"            <li class=\"\"><a href=\"http://localhost:8080/prueba/catalogo\"><span class=\"iconify nav-svg\" data-icon=\"grommet-icons:catalog\"></span>Catalogo</a></li>\n" +
"            <li class=\"\"><a href=\"http://localhost:8080/prueba/contacto\"><span class=\"iconify nav-svg\" data-icon=\"healthicons:health-worker-form-outline\"></span>Contacto</a></li>\n" +
"            <li class=\"\"><a href=\"/ingresar/\"><span class=\"iconify nav-svg\" data-icon=\"bi:shop\"></span>Ingresar</a></li>\n" +
"        </ul>     \n" +
"        <div class=\"searchBar\">\n" +
"            <input type=\"text\" class=\"searchBar-input\" placeholder=\"Buscar Libro\">\n" +
"            <span class=\"iconify searchBar-svg\" data-icon=\"mdi:book-search-outline\"></span>\n" +
"        </div>\n" +
"    </header>");
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in ManejadorHeader tag", ex);
        }
    }
    
}
