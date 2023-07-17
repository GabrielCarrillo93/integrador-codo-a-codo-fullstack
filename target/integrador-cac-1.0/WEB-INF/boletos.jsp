<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/codoacodo.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/styles.css">
    <title>Comprar Tickets</title>
</head>
<body>
    <jsp:include page="comunes/navbar.jsp" />
    <main>
      <div class="container px-4 text-center col-7 mt-3 mb-3">
        <div class="row gx-1">
          <div class="col">
            <div class="p-3 border border-1 border-primary">
                <h4>Estudiante</h4>
                <p class="fw-light">Tienen un descuento</p>
                <p class="fw-bold fs-3">80%</p>
                <span class="fs-6 f2-lighter text-secondary">*presentar documentaci�n</span>
            </div>
          </div>
          <div class="col">
            <div class="p-3 border border-1 border-info">
                <h4>Trainee</h4>
                <p class="fw-light">Tienen un descuento</p>
                <p class="fw-bold fs-3">50%</p>
                <span class="fs-6 f2-lighter text-secondary">*presentar documentación</span>
            </div>
          </div>
          <div class="col ">
            <div class="p-3 border border-1 border-warning">
                <h4>Junior</h4>
                <p class="fw-light">Tienen un descuento</p>
                <p class="fw-bold fs-3">15%</p>
                <span class="fs-6 f2-lighter text-secondary">*presentar documentación</span>
            </div>
          </div>
        </div>
      </div>


      <div class="container col-md-7 col-sm-1 text-center">
        <span>Venta</span>
        <h2>VALOR DE TICKET $200</h2>
      </div>

      <div class="container-fluid col-sm-12 col-md-7 mb-4">
        <form>
            <div class="row g-2">
                <div class="col-sm-1 col-md-6 mb-2">
                    <input type="text" name="nombre" id="fname" class="form-control" placeholder="Nombre">
                </div>
                <div class="col-sm-1 col-md-6 mb-2">
                    <input type="text" name="apellido" id="lname" class="form-control" placeholder="Apellido">
                </div>
                <div class="col-sm-2 col-md-12 mb-2">
                    <input type="email" name="email" id="email" class="form-control" placeholder="Correo">
                </div>
                <div class="col-md-6 col-sm-1">
                    <div class="col-12">
                        <label for="cantidad">Cantidad</label></div>
                    <div class="col-12">
                        <input type="number" name="cantidad" placeholder="Cantidad" class="form-control" id="cantidad">
                    </div>
                </div>
                <div class="col-sm-1 col-md-6">
                    <div class="col-12">
                        <label for="categoria">Categoría</label>
                    </div>
                    <div class="col-12">
                        <select name="categoria" id="categoria" class="form-control">
                            <option value="0.8">Estudiante</option>
                            <option value="0.5">Trainee</option>
                            <option value="0.15">Junior</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="container text-start bg-info bg-opacity-25 border rounded-3 mt-3 mb-3">
                <div class="row align-items-center">
                  <div class="col mt-2 ms-3">
                    <p class="text-start text-primary ">Total a Pagar: $<span class="text-end" id="total"></span></p>
                  </div>
                </div>
            </div>
            
            <div class="container">
                <div class="row g-2">
                    <div class="col">
                        <button class="enviar border border-0 p-2 text-white col-12" type="reset" id="reset">Borrar</button>
                    </div>
                    <div class="col">
                        <button class="enviar border border-0 p-2 text-white col-12" type="button" id="resumen">Resumen</button>
                    </div>
                </div>
            </div>

      </form>
      
    </div>
    </main>

    <jsp:include page="comunes/footer.jsp" />
    <script src="js/compra.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</body>
</html>