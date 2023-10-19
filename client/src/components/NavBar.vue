<template>
  <div class="row navbar gx-0 p-2 bg-dark sticky-top offcanvas-custom">
    <div class="col-4 align-self-center">
      <div class="row">
        <div class="col">
          <a class="navbar-brand text-light" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"
            aria-controls="offcanvasExample">
            <v-icon name="ri-menu-unfold-fill" scale="2.0" />
          </a>
        </div>
      </div>

      <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasExampleLabel">
            <img class="offcanvas-logo" src="@/assets/takefoodlogo.png" alt="takefood logo">
          </h5>
          <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">

          <div class="row-colums">
            <div class="col">Nombre</div>
            <div class="col">descripción</div>
            <div class="col">
              <div class="row">
                <Span>Contacto / Dirección</Span>
                <div class="col">telefono</div>
                <div class="col">mail</div>
                <div class="col">redes sociales</div>
              </div>
            </div>
          </div>

          <div class="dropdown mt-3">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
              data-bs-toggle="dropdown">
              Nuestas opciones
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <li><a class="dropdown-item" href="#">Menu 1</a></li>
              <li><a class="dropdown-item" href="#">Menu 2</a></li>
              <li><a class="dropdown-item" href="#">menu 3</a></li>
            </ul>
          </div>

        </div>
      </div>

    </div>
    <div class="col-8 col-md-4  col-sm-8 align-self-center ">
      <div class="row">
        <UserLoged />
      </div>
    </div>
  </div>


  <div class="banner">
    <div class="banner-description">
      <h1>Bienvenido a <span class="takefood-text">TakeFood</span></h1>
      <h2>Disfruta las delicias que tenemos para vos</h2>
    </div>
  </div>
</template>

<script setup>
import UserLoged from '@/components/UserLoged.vue';

</script>

<style scoped>
.offcanvas-custom {
  z-index: 2;
}

.offcanvas-logo {
  border-radius: 50%;
  width: 50px;
  height: 50px
}

.banner {
  background-image: url("@/assets/banner-with-fast-food.jpeg");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: right;
  width: 100%;
  min-height: 400px;
}

.banner-description {
  padding: 7rem 0 0 2rem;
}

.takefood-text {
  padding: 0.625rem;
  border: solid 2px darkorange;
  border-radius: 10%;
  background-color: rgb(33, 37, 41);
  color: darkorange;
}

.banner-description h1,
h2 {
  font-weight: 700;
  /* font-family: 'Lucida Sans', 'Lucida Sans Regular'; */
  color: rgb(33, 37, 41);
  text-shadow: 0ch;
}

@media screen and (max-width: 480px) {

  .banner {
    background-position: left;
    min-height: 300px;
  }

  .banner-description {
    padding: 5rem 0 0 2rem;
  }

  .takefood-text {
    padding: 2px;
    border: solid 2px darkorange;
    border-radius: 5px;
  }

  .banner-description {
    font-weight: 200;
    font-size: 2rem;
  }
}
</style>