<template>
  <div class="row navbar gx-0 p-2 bg-dark sticky-top offcanvas-custom">
    <div class="col-4 align-self-center">
      <h5 class="offcanvas-title" id="offcanvasExampleLabel">
        <router-link :to="{ name: 'home' }"><img class="offcanvas-logo" src="@/assets/takefoodlogo.png" alt="takefood logo"></router-link>
        
      </h5>
    </div>
  </div>
</template>

<script setup>


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