<%-- 
    Document   : detalles
    Created on : 12/11/2021, 11:42:35
    Author     : agust
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LibApp | Inicio </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?Open+Sans&family=Arvo&family=Lato&family=Noto+Sans&family=Poppins&family=Quicksand&family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="vista/cliente/detalles/detalleLibroStyless.css">
    <link rel="stylesheet" href="vista/principal.css">

</head>
<body>
    <header>
        <div class="logo">
            <span class="iconify logo-svg" data-icon="ant-design:book-outlined"></span>
            <h1>LibApp</h1>
        </div>
        <ul class="">
            <li class="">
                <span class="iconify nav-svg" data-icon="ant-design:home-outlined"></span>Inicio</li>
            <li class=""><span class="iconify nav-svg" data-icon="grommet-icons:catalog"></span>Catalogo</li>
            <li class=""><span class="iconify nav-svg" data-icon="healthicons:health-worker-form-outline"></span>Contacto</li>
            <li class=""><span class="iconify nav-svg" data-icon="bi:shop"></span>Tienda</li>
        </ul>     
        <div class="searchBar">
            <input type="text" class="searchBar-input" placeholder="Buscar Libro">
            <span class="iconify searchBar-svg" data-icon="mdi:book-search-outline"></span>
        </div>
    </header>
    <main>
        
    <section class="section-1">
    	<p class="section-title">
    		${libro.getTitulo()}
    	</p>
        

    	<div class="section-libro-img">
    		<img src=${libro.getUrlImagen()} alt="">
    	</div>

    	<p class="section-autor">
    		${libro.getIdAutor().getNombreCompleto()}
    	</p>

    	<p class="section-category">
    		<strong>Categoria: </strong>${libro.getIdGenero().getNomGen()}
    	</p>

    	<p class="section-list">
    		Disponible en:
    		<ul class="section-ul">
    			<li class="section-list-li">
    				Cuspide
    			</li>

    			
    		</ul>
    	</p>
    </section>

    <section class="section-2">
    	<p class="section-description-title">
    		Descripcion
            <span class="iconify" data-icon="iconoir:page"></span>
    	</p>

        <p class="description-paragraph">
            ${libro.getDescripcion()}
        </p>    

        <div class="shop">
            <p class="price">$ ${libro.getPrecio()}</p>
            <div class="group">
            <a href="#" class="add"><p>Agregar al carrito</p> <span class="iconify" data-icon="icons8:buy"></span></a>
            <a href="#" class="reservar"><p>Reservar</p> <span class="iconify" data-icon="icons8:buy"></span></a>
            </div>
        </div>

        <section class="details">
            <p class="details-title">Detalles<span class="iconify" data-icon="clarity:details-line"></span></p>
            <div class="details-group">
            <p class="isbn"><span class="bold">ISBN:</span> ${libro.getIsbn()}</p>
            <p class="edicion"><span class="bold">Edicion:</span> ${libro.getEdicion()}</p>
            <p class="n-page"><span class="bold">N° de Páginas:</span> ${libro.getCantPag()}</p>
            <p class="peso"><span class="bold">Peso (gramos):</span> ${libro.getPeso()}</p>

            <p class="editorial"><span class="bold">Editorial:</span> ${libro.getIdEdit().getNombre()}</p>
            <p class="formato"><span class="bold">Formato:</span> ${libro.getFormato()}</p>
            </div>
        </section>

    </section>
        
    </main>
    <footer>
        <div class="footer-nav">
        <ul>
            <li class="footer-li-title">LibApp</li>
            <li class="footer-li">Locales</li>
            <li class="footer-li">Privacidad</li>
            <li class="footer-li">Contacto</li>
            <li class="footer-li">Trabajar con nosotros</li>
        </ul>

        <ul>
            <li class="footer-li-title">LibApp</li>
            <li class="footer-li">Locales</li>
            <li class="footer-li">Privacidad</li>
            <li class="footer-li">Contacto</li>
            <li class="footer-li">Trabajar con nosotros</li>
        </ul>

        <ul>
            <li class="footer-li-title">LibApp</li>
            <li class="footer-li">Locales</li>
            <li class="footer-li">Privacidad</li>
            <li class="footer-li">Contacto</li>
            <li class="footer-li">Trabajar con nosotros</li>
        </ul>
        </div>
        <p class="footer-p">Copyright © 2021-2021 LibApp Libros S.A.
 TODOS LOS DERECHOS RESERVADOS</p>
        <p class="footer-p">
            Desarrollo integral del sitio: Agustín Galleguillo
        </p>
    </footer>
    <script src="https://code.iconify.design/2/2.0.4/iconify.min.js"></script>
</body>
</html>