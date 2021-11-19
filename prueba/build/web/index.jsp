<%-- 
    Document   : index
    Created on : 12/11/2021, 15:03:04
    Author     : agust
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="header" uri="WEB-INF/tlds/header.tld" %>
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
    <link rel="stylesheet" href="vista/styles.css">
    <link rel="stylesheet" href="vista/principal.css">
    <link rel="stylesheet" href="vista/libro-section.css">

</head>
<body>
    
     <header:ManejadorHeader/>
    <main>
        <div class="slider">
            <img src="assets/img/slider1.jpg" alt="">
        </div>
        <div class="frase">
            <p class="frase-texto">“El tiempo es el mayor antagonista, o tal vez, el único”</p>
            <p class="autor-frase">Jorge Luis Borges</p>
        </div>

        <section>
            <h4 class="section-title">Recomendaciones para ti</h4>
            <div class="article-container">
            <c:forEach var="libro" items="${libros}">
                <a href="http://localhost:8080/prueba/detalles?id=${libro.getIsbn()}"}>
                 <article class="libro">
                    <img src="${libro.getUrlImagen()}" alt="" class="portada-libro">
                    <p class="titulo">${libro.getTitulo()}</p>
                    <p class="autor">${libro.getIdAutor().getNombreCompleto()}</p>
                    <p class="descripcion">${libro.getDescripcion()}</p>
                    <p class="precio">$${libro.getPrecio()}</p>
                </article>
                </a>
            </c:forEach>
            
                
            </div>
        </section>

        <div class="info">
            <div class="article-icon">
                <span class="iconify nav-svg" data-icon="ant-design:credit-card-outlined"></span>
                <p class="article-icon-info">Paga con tarjetas de crédito y débito</p>

            </div>
            <div class="article-icon">
                <span class="iconify nav-svg" data-icon="bx:bx-box"></span>
                <p class="article-icon-info">Retira tu pedido cuando quieras</p>

            </div>
            <div class="article-icon">
                <span class="iconify nav-svg" data-icon="carbon:delivery-truck"></span>
                <p class="article-icon-info">Envio a todo el pais</p>

            </div>
            <div class="article-icon">
                <span class="iconify nav-svg" data-icon="ant-design:safety-certificate-outlined"></span>
                <p class="article-icon-info">Compra protegida</p>

            </div>
        </div>
    </main>
    <footer>
        <div class="footer-nav">
        <ul>
            <li class="footer-li-title">LibApp</li>
            <li class="footer-li"><a href="localhost:8080">Locales</a></li>
            <li class="footer-li"><a href="localhost:8080">Privacidad</a></li>
           
        </ul>

        <ul>
            <li class="footer-li-title">LibApp</li>
            <li class="footer-li"><a href="localhost:8080/novedades">Novedades</a></li>
            <li class="footer-li"><a href="localhost:8080/masVendidos">Libros Mas Vendidos</a></li>
        </ul>

        <ul>
            <li class="footer-li-title">LibApp</li>
            <li class="footer-li"><a href="localhost:8080/contacto">Contacto</a></li>
            <li class="footer-li"><a href="localhost:8080/ingresar">Ingreasar</a></li>
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