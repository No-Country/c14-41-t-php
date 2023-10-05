<template>
  <div class="fondo">
    <div class="form">
      <form class="d-flex-rows">
        <div style="opacity: 0.60;">
          <img class="login" src="@/assets/logoCo.webp" alt="logo">
        </div>

        <div class="container">

          <div class="row ">
            <div class="col-12 col-md-6">
              <div class="form-floating mb-1 mt-2">
                <input type="email" class="form-control shadow" id="floatingInput" placeholder="nombre@gmail.com">
                <label for="floatingInput">Email</label>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <div class="form-floating mb-1 mt-2">
                <input type="password" class="form-control shadow" id="floatingPassword" placeholder="contraseña">
                <label for="floatingPassword">Contraseña</label>
              </div>
            </div>
          </div>

          <div class="row ">
            <div class="col-12 col-md-6">
              <div class="form-floating mb-1 mt-1">
                <input type="text" class="form-control shadow" id="name" placeholder="Nombre">
                <label for="name">Nombre</label>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <div class="form-floating mb-1 mt-1">
                <input type="text" class="form-control shadow" id="floatingPassword" placeholder="Apellido">
                <label for="floatingPassword">Apellido</label>
              </div>
            </div>
          </div>

          <div class="row ">
            <div class="col-12 col-md-6">
              <div class="form-floating mb-1 mt-1">
                <input type="text" class="form-control shadow" id="floatingInput" placeholder="Teloefono">
                <label for="floatingInput">Telefono</label>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <div class="form-floating mb-1 mt-1">
                <input type="text" class="form-control shadow" id="floatingPassword" placeholder="Calle">
                <label for="floatingPassword">Calle</label>
              </div>
            </div>
          </div>

          <div class="row ">
            <div class="col-12 col-md-6">
              <div class="form-floating mb-1 mt-1">
                <input type="text" class="form-control shadow" id="floatingInput" placeholder="Altura">
                <label for="floatingInput">Altura</label>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <div class="form-floating mb-1 mt-1">
                <input type="text" class="form-control shadow" id="floatingPassword" placeholder="Ciudad">
                <label for="floatingPassword">Ciudad</label>
              </div>
            </div>
          </div>

          <div class="mb-5 mt-1  ingresar">
            <div class="btn btn-success shadow"><v-icon class="me-3" name="gi-archive-register" />Registrar</div>
          </div>
          <div class="row"></div>
        </div>
      </form>
    </div>
  </div>
</template>

<script setup>
</script>

<style scoped>
  .fondo {
    background-image: url("@/assets/fondoRegister.jpg");
    top: 0;
    bottom: 0;
    width: 100vw;
    height: 100vh;

  }

  .img {
    position: fixed;
    width: 100%;
    height: 100vh;
  }

  .form {
    z-index: 100;
  }

  .login {
    width: 150px;
    height: 80%;
    margin: 0px auto;
    margin-top: 0px;
    top: 20px;
    display: block;
  }

  .container {
    align-content: center;
    text-align: center;
    align-self: center;
    justify-self: center;
    position: relative;
    top: 10vh;
    width: 80vh;
    background: #ffffff;
    border-radius: 10px;
    margin-bottom: 10vh;
    opacity: 0.88;
  }

  @media (max-width: 700px) {
    .container {
      align-content: center;
      top: 5vh;
      margin-bottom: 5vh;
      width: 80%;
    }
  }
</style>