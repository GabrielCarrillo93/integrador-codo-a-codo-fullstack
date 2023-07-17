<%-- 
    Document   : editar-orador
    Created on : 11 jul. 2023, 17:01:52
    Author     : Marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/codoacodo.png" type="image/x-icon">
        <link rel="stylesheet" href="css/styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <title>Editar orador</title>
    </head>
    <body>
        <jsp:include page="comunes/navbar.jsp" />
        <main class="container-fluid col-sm-12 col-md-12 mt-2">
            <section class="container-fluid col-sm-12 col-md-6">
                <h1>Editando orador</h1>
                <p>Estás editando al orador ${oradorAEditar.nombre} ${oradorAEditar.apellido}</p>
            </section>
            <section class="container-fluid col-sm-12 col-md-6 mb-5">
                <div class="col-sm-1 col-md-6 mb-3">
                    <img src="${oradorAEditar.foto}" height="100" alt="alt"/>
                        </div>
                <form action="${pageContext.request.contextPath}/ver-oradores?accion=editar&id=${oradorAEditar.id}" method="post">
                    <div class="row g-2 col-md-12">
                      <div class="col-sm-1 col-md-6 mb-3">
                          <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Nombre" value="${oradorAEditar.nombre}" required>
                      </div>
                      <div class="col-sm-1 col-md-6 mb-3">
                        <input type="text" name="apellido" id="apellido" class="form-control" placeholder="Apellido" value="${oradorAEditar.apellido}" required>
                      </div>
                        <div class="col-sm-1 col-md-12 mb-3">
                        <input type="file" name="foto" id="foto" class="form-control" placeholder="Agreggar una foto">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-1 col-md-12">
                        <textarea name="tema" id="tema" rows="5" class="form-control" placeholder="Sobre qué quieres hablar?">${oradorAEditar.tema}</textarea>
                        <label for="tema" class="text-start text-secondary-emphasis">Recuerda incluir un tí­tulo para tu charla</label>
                      </div>
                    </div>
                        <div class="col-sm-12 col-md-12 justify-content-end d-flex">
                            <button class="enviar border border-0 col-3 p-2 text-white mx-2"><a class="text-white text-decoration-none" href="${pageContext.request.contextPath}/ver-oradores">Volver atrás</a></button>
                        <button class="enviar border border-0 col-3 p-2 text-white mx-2" type="submit">Enviar</button>
                    </div>
                </form>
            </section>
        </main>
        <jsp:include page="comunes/footer.jsp" />
    </body>
</html>
