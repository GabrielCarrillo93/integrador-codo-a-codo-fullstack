<%-- 
    Document   : index
    Created on : 1 jul. 2023, 18:53:46
    Author     : Marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="img/codoacodo.png" type="image/x-icon">
  <link rel="stylesheet" href="css/styles.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
  <title>Codo a Codo - Integrador Fullstack</title>
</head>

<body>
    <jsp:include page="WEB-INF/comunes/navbar.jsp" />
   
    <header class="container-fluid position-relative">
        <span id="conf"></span>
        <div class="col-sm-12 col-md-7">
            <h1>Conf Bs As</h1>
            <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comundidad el conocimiento y
            experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a
            otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para tí­. Te esperamos!</p>
            <a href="#form"><button class="text-bg-dark rounded border p-2" >Quiero ser orador</button></a>
            <a href="boletos"><button class="text-bg-success rounded border border-0 p-2">Comprar tickets</button></a>
        </div>
    </header>

  <main>
    <section class="container-fluid row justify-content-around">
      <h2 class="text-center"><span class="fs-5 mb-0 text-secondary-emphasis d-block" id="oradores">Conoce a los</span> ORADORES</h2>
      <article class="col-sm-1 col-md-3">
        <div class="mb-3"><img src="img/steve.jpg" alt="Steve Jobs" width="100%"></div>
        <div class="container m-1">
          <div><span class="bg-warning rounded fw-bold p-1">Javascript</span> <span
              class="bg-info rounded fw-bold text-white p-1">React</span></div>
          <h3 class="m-2">Steve Jobs</h3>
          <p class="m-2">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquid hic tenetur optio, ipsa dolor
            blanditiis, commodi laborum aliquam placeat, iste cumque quasi similique nesciunt inventore doloremque error
            tempora porro. Mollitia!</p>
        </div>
      </article>
      
      <article class="col-sm-1 col-md-3">
        <div class="mb-3"><img src="img/bill.jpg" alt="Bill Gates" width="100%"></div>
        <div class="container">
          <span class="bg-warning rounded fw-bold p-1">Javascript</span> <span
            class="bg-info rounded fw-bold text-white p-1">React</span>
          <span>
        </div>
        <h3 class="m-2">Bill gates</h3>
       

        <p class="m-2">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquid hic tenetur optio, ipsa dolor
          blanditiis, commodi laborum aliquam placeat, iste cumque quasi similique nesciunt inventore doloremque error
          tempora porro. Mollitia!</p>
      </article>
      <article class="col-sm-1 col-md-3">
        <div class="mb-3"><img src="img/ada.jpeg" alt="Ada Lovelace" width="100%"></div>
        <div><span class="bg-secondary rounded fw-bold text-white p-1">Negocios</span> <span
            class="bg-danger rounded fw-bold text-white p-1">Startups</span></div>
        <h3 class="m-2">Ada Lovelace</h3>

        <p class="m-2">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquid hic tenetur optio, ipsa dolor
          blanditiis, commodi laborum aliquam placeat, iste cumque quasi similique nesciunt inventore doloremque error
          tempora porro. Mollitia!</p>
      </article>
    </section>
      
    <span id="fecha"></span>
    <section class="container-fluid row m-0 p-0 justify-content-around">
      <div class="container-fluid row mt-5 mb-3 p-0">
        <div class="col-sm-1 col-md-6 m-0 p-0">
          <img src="img/honolulu.jpg" alt="Honolulu" class="col-12">
        </div>
        <div class="col-sm-1 col-md-6 text-bg-dark m-0 ps-4 pt-3">
          <h2>Bs AS . Octubre</h2>
          <p class="fw-light">
            Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu es la
            más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área
            urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad
            consolidada que cubre toda la ciudad (aproximadamente 600km<sup>2</sup> de superficie).</p>
            <div><button class="text-bg-dark rounded border">Conoce más</button></div>
        </div>
      </div>
    </section>

<span id="form"></span>
    <div class="container-fluid col-sm-12 col-md-6 mb-4 ">
        
      <h2 class="text-center"><span class="fs-5 mb-0  text-secondary-emphasis d-block">Conviértete en un</span> ORADOR</h2>
      <p class="text-center">Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</p>
      <form action="${pageContext.request.contextPath}/ver-oradores?accion=agregar" method="post">
        <div class="row g-2">
          <div class="col-sm-1 col-md-6 mb-3">
              <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Nombre" required>
          </div>
          <div class="col-sm-1 col-md-6 mb-3">
            <input type="text" name="apellido" id="apellido" class="form-control" placeholder="Apellido" required>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-1 col-md-12">
            <textarea name="tema" id="tema" rows="5" class="form-control" placeholder="Sobre qué quieres hablar?" required></textarea>
            <label for="tema" class="text-start">Recuerda incluir un tí­tulo para tu charla</label>
          </div>
        </div>
        <button class="enviar border border-0 col-12 p-2 text-white" type="submit">Enviar</button>
      </form>
    </div>
  </main>
   
    <jsp:include page="WEB-INF/comunes/footer.jsp"/>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</body>

</html>
