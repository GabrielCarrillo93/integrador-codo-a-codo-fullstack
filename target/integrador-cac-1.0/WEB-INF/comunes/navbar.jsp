<%-- 
    Document   : navbar
    Created on : 1 jul. 2023, 18:35:34
    Author     : Marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top" data-bs-theme="dark">
        <div class="container-fluid ms-0 ms-md-5">
          <a class="navbar-brand" href="index.jsp">
            <img src="img/codoacodo.png" alt="CodoaCodo" width="100" class="ms-5">
            <p class="d-inline-block ms-5">Conf Bs As</p>
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-md-0 text-end">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.jsp">La conferencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.jsp#oradores">Los oradores</a>
              </li>
              <li class="nav-item">
                <a href="index.jsp#fecha" class="nav-link">El lugar y la fecha</a>
              </li>
              <li class="nav-item">
                <a href="index.jsp#form" class="nav-link">Conviértete en orador</a>
              </li>
              <li class="nav-item">
                <a href="boletos" class="nav-link text-success">Comprar tickets</a>
              </li>
              <li class="nav-item">
            <a href="ver-oradores" class="nav-link text-success">Ver oradores</a>
          </li>
            </ul>
          </div>
        </div>
    </nav>
    </body>
</html>
