<template>
  <div class="row navbar gx-0 p-2 bg-dark fixed-top">
    <div class="col-4 align-self-center">
      <div class="row">
        <div class="col">
          <a class="navbar-brand text-light" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"
            aria-controls="offcanvasExample">
            <v-icon name="ri-menu-unfold-fill" scale="2.0" />
          </a><span>COMA-RICO</span>
        </div>
      </div>

      <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasExampleLabel">Colocar logo</h5>
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
      <h1>Bienvenido a TakeFood</h1>
      <h2>Disfruta las delicias que tenemos para vos</h2>
    </div>
  </div>
</template>

<script setup>
import UserLoged from '@/components/UserLoged.vue';

</script>

<style scoped>
.banner {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-image: url("@/assets/tamatobanner.png");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center center;
  width: 100%;
  height: 300px;
  box-shadow: 0px 20px 30px rgba(242, 235, 235, 0.5);
}

.banner-description:first-child {
  font-weight: 700;
  font-family: 'Lucida Sans', 'Lucida Sans Regular';
  color: rgb(208, 152, 10);
  text-shadow: 0ch;
}
</style>