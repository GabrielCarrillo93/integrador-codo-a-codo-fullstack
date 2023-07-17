<%-- 
    Document   : borrar-orador
    Created on : 13 jul. 2023, 15:53:39
    Author     : Marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/codoacodo.png" type="image/x-icon">
        <link rel="stylesheet" href="css/styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <title>Borrar orador</title>
    </head>
    <body>
        <jsp:include page="comunes/navbar.jsp" />
        <main>
          <section class="container-fluid my-2 text-center p-0 d-flex justify-content-around">
                  <div class="row col-9 justify-content-around align-items-center">
                        <h1 class="fw-bold text-start">Borrar orador</h1>
                        <section class="col col-sm-12 col-md-5">
                
                                <div class="card my-3" style="width: 18rem;">
                                        <img src="${oradorABorrar.foto}" class="card-img-top" alt="...">
                                <div class="card-body">
                                <h5 class="card-title">${oradorABorrar.nombre} ${oradorABorrar.apellido}</h5>
                
                                </div>
                                </div>
                
                        </section>
                        <section class="col col-sm-12 col-md-5">
                                <h2>Estás seguro que deseas borrar al orador ${oradorABorrar.nombre} ${oradorABorrar.apellido}</h2>
                                <form action="${pageContext.request.contextPath}/ver-oradores?accion=borrar&id=${oradorABorrar.id}" method="post">
                                        <div class="col-sm-12 col-md-12 justify-content-end d-flex">
                                           <button class="enviar border border-0 col-3 p-2 text-white mx-2"><a class="text-white text-decoration-none" href="${pageContext.request.contextPath}/ver-oradores">Volver atrás</a></button>
                                                <button class="bg-danger border border-0 col-5 p-2 text-white mx-2" type="submit">Borrar</button>
                                        </div>
                                </form>
                        </section>
                </div>
        </section>
    </main>
        <jsp:include page="comunes/footer.jsp" />
    </body>
</html>
