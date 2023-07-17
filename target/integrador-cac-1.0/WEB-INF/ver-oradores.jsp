<%-- 
    Document   : ver-oradores
    Created on : 1 jul. 2023, 18:15:29
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
        <title>Oradores</title>
    </head>
    <body>
        <jsp:include page="comunes/navbar.jsp"/>
        <main>
        <section class="container-fluid row justify-content-around text-center mx-0 my-5 p-0">
            <jsp:include page="oradores/oradorescards.jsp" />
            
        </section>
    </main>
        <jsp:include page="comunes/footer.jsp" />
    <script src="js/compra.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
    </body>
</html>
