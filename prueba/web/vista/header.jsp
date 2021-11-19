<%-- 
    Document   : header
    Created on : 11/11/2021, 21:04:18
    Author     : agust
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header>
        <div class="logo">
            <span class="iconify logo-svg" data-icon="ant-design:book-outlined"></span>
            <h1>LibApp</h1>
        </div>
        <ul class="">
            <li class="">
                <a href="localhost:8080"><span class="iconify nav-svg" data-icon="ant-design:home-outlined"></span>Inicio</a></li>
            <li class=""><a href="http://localhost:8080/prueba/catalogo"><span class="iconify nav-svg" data-icon="grommet-icons:catalog"></span>Catalogo</a></li>
            <li class=""><a href="http://localhost:8080/prueba/contacto"><span class="iconify nav-svg" data-icon="healthicons:health-worker-form-outline"></span>Contacto</a></li>
            <li class=""><a href="/ingresar/"><span class="iconify nav-svg" data-icon="bi:shop"></span>Ingresar</a></li>
        </ul>     
        <div class="searchBar">
            <input type="text" class="searchBar-input" placeholder="Buscar Libro">
            <span class="iconify searchBar-svg" data-icon="mdi:book-search-outline"></span>
        </div>
    </header>