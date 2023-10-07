<template>
  <NavBar />
  <div class="row-container container">
    <div class="row">
      <div class="col d-flex justify-content-center">
        <span><h1>Menues</h1></span>
      </div>
    </div>
    <div class="rows">
      <div class="col">

        <div class="row mt-3">
          <div class="col-12 col-md-4">
              <div class="card" style="width: 12rem;">
                <!-- <img src="..." class="card-img-top" alt="..."> -->
                <div class="card-body">
                  <h5 class="card-title">{{listProduct[0].title}}</h5>
                  <p class="card-text">{{listProduct[0].desc}}</p>
                  <b>{{listProduct[0].price}}</b>
                <a href="#" class="btn btn-primary">Agregar </a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</template>

<script setup>
  import NavBar from '@/components/NavBar.vue'
 
  const listProduct = [
    {
      title:"Plato1",
      desc:"loremipsu bla bla bla",
      price:"$1500"
    }
  ]


</script>

<style scoped>
  .container {
    background: green;
    height: 100vh;
  }
  b {
    display: block;
    margin-bottom: 3px;
  }
</style>
