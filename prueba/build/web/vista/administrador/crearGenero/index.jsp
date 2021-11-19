<%-- 
    Document   : index
    Created on : 11/11/2021, 21:08:41
    Author     : agust
--%>
<%@taglib prefix="header" uri="../../../WEB-INF/tlds/header.tld" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LibApp | Inicio </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?Open+Sans&family=Arvo&family=Lato&family=Noto+Sans&family=Poppins&family=Quicksand&family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="vista/crearLibro.css">
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
    <header:ManejadorHeader/>
    <main>
        

        <h2 class="h2">
            Crear Genero
        </h2>
        

        
        <form action="http://localhost:8080/prueba/createGenero"  method="POST">
            <div class="container">
            <div class="group-input">
                <label for="nombre">Nombre de Genero</label>
                <input type="text" id="nombre" name="nombre" placeholder="Nombre">
            </div>

            
			
			<div class="group-input send">
            <button type="submit" id="submit">Crear <span class="iconify" data-icon="akar-icons:send"></span></button>
			</div>
            </div>

        </form>
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