<%-- 
    Document   : index
    Created on : 11/11/2021, 18:37:35
    Author     : agust
--%>

<%@ taglib prefix="c" 
       uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="header" uri="../../../WEB-INF/tlds/header.tld" %>
<%@page import="java.util.ArrayList"%>
<%@page import="entidades.Autor"%>
<%@page import="entidades.Genero"%>
<%@page import="entidades.Editorial"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LibApp | Crear Libro </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?Open+Sans&family=Arvo&family=Lato&family=Noto+Sans&family=Poppins&family=Quicksand&family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="vista/crearLibro.css">
    <link rel="stylesheet" href="vista/principal.css">

</head>
<body>
   
    <header:ManejadorHeader/>
    <main>
        

        <h2 class="h2">
            Crear Libro
        </h2>
        

        
        <form action="http://localhost:8080/prueba/createLibro"  id="form" method="POST">
            <div class="container">
            <div class="group-input">
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" placeholder="Nombre">
            </div>

            <div class="group-input">
                <label for="isbn">ISBN</label>
                <input type="text" id="isbn" name="isbn" placeholder="ISBN">
            </div>

            <div class="group-input">
                <label for="cant_pag">Cantidad de páginas</label>
                <input type="number" id="cant_pag" name="cant_pag" placeholder="Cantidad de Páginas">
            </div>
                
            <div class="group-input">
                <label for="peso">Peso (Gramos)</label>
                <input type="number" id="cant_pag" name="peso" placeholder="Peso Gramos">
            </div>
                
             <div class="group-input">
                <label for="edicion">Edicion</label>
                <input type="number" id="cant_pag" name="edicion" placeholder="Edicion">
            </div>
                
            <div class="group-input">
                <label for="formato">Formato</label>
                <select  id="formato" name="formato">
                    <option value="rustico"}>Rustico</option>
                         <option value="electronico"}>Electronico</option>
                    
                </select>
            </div>

			<div class="group-input">
                <label for="precio">Precio (ARS)</label>
                <input type="number" id="precio" name="precio" placeholder="Precio">
            </div>

            <div class="group-input">
                <label for="disponibilidad">Disponibilidad</label>
                <select  id="disponibilidad" name="disponibilidad">
                    <option value="disponible">Disponible</option>
                    <option value="no disponible">No disponible</option>
                </select>
            </div>

            <div class="group-input">
                <label for="editorial">Editorial</label>
                <select  id="editorial" name="editorial">
                    <c:forEach var="editorial" items="${editoriales}">
                        <option value=${editorial.getIdEditorial()}>${editorial.getNombre()}</option>
                    </c:forEach>
                </select>
            </div>
            
            <div class="group-input">
                <label for="autor">Autor</label>
                <select  id="autor" name="autor">
                    <c:forEach var="autor" items="${autores}">
                        <option value=${autor.getIdAutor()}>${autor.getNomAut()} ${autor.getApellAutor()}</option>
                    </c:forEach>
                </select>
            </div>
                
            <div class="group-input">
                <label for="genero">Genero</label>
                <select  id="genero" name="genero">
                    <c:forEach var="genero" items="${generos}">
                        <option value=${genero.getIdGenero()}>${genero.getNomGen()}</option>
                    </c:forEach>
                </select>
            </div>
            
                
            <div class="group-input">
                <label for="Descripcion">Descripcion</label>
                <textarea id="descripcion" name="descripcion" placeholder="Descripcion"></textarea>
            </div>
            
			
			<div class="group-input">
                <label for="imagen">Subir imagen</label>
                <input type="file"
				id="imagen" name="imagen"
				accept="image/png, image/jpeg">
            </div>
			<input type="text" hidden name="urlImagen" id="urlImagen" >
			<div class="group-input send">
            <button type="button" onclick="evento()" id="boton">Crear <span class="iconify" data-icon="akar-icons:send"></span></button>
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
    <script src="https://www.gstatic.com/firebasejs/8.4.1/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/8.4.1/firebase-storage.js"></script>
	<script src="https://www.gstatic.com/firebasejs/8.4.1/firebase-firestore.js"></script>
	<script>
		
	</script>

	 <script >
	 const firebaseConfig = {
	    apiKey: "AIzaSyABfRjY3jsp8i4lMDLXII1Iw4CvcXSH4Lk",
	    authDomain: "libapp-e432d.firebaseapp.com",
	    projectId: "libapp-e432d",
	    storageBucket: "libapp-e432d.appspot.com",
	    messagingSenderId: "1075453768114",
	    appId: "1:1075453768114:web:6cbc1fa953c895c119b4ab",
	    measurementId: "G-4D7PYLDER6"
	  };

	  
	  

	  

	  const app = firebase.initializeApp(firebaseConfig);
		var storage = firebase.storage();
		async function evento(){
			let file = document.querySelector("#imagen").files[0];
			let storageRef = firebase.storage().ref().child(file.name);
			let a = await storageRef.put(file);
			a.ref.getDownloadURL().then(function(downloadURL) {
        	 let input = document.getElementById('urlImagen');
             let form  = document.getElementById('form');
             input.value = downloadURL;
             form.submit();
     		 });
		}
	</script>
</body>
</html>