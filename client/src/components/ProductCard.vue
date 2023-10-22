<template>
  <div class="card custom-card">
    <!-- <img :src="props.image" class="card-img-top custom-img" alt="comida">  -->
    <img src="https://kingspizzapronto.com/wp-content/uploads/2018/09/Pizza-7_19_180446-900x900.jpg"
      class="card-img-top custom-img" alt="comida">
    <div class="card-body">
      <h5 class="card-title">{{ props.name }}</h5>
      <p class="card-text">{{ props.description }}</p>
      <p class="card-text">{{ props.cooking_time }} min para retirar </p>
      <b>$ {{ props.price }}</b>
    </div>
    <button @click.prevent="AddCarrito(props.id)" class="btn btn-secondary">Agregar al carrito</button>
  </div>
</template>


<script setup>
import { defineProps } from 'vue'
import useCarrito from '@/store/carrito'

const storeCarrito = useCarrito()

const props = defineProps(
  {
    id: Number,
    name: String,
    description: String,
    price: Number,
    id_category: Number,
    cooking_time: Number,
    image: Image
  },
)

const AddCarrito = (itemSelected) => {
  storeCarrito.producto.push(itemSelected)
  console.log('seleccion de carrito', storeCarrito.producto)
}

</script>

<style scope>
.custom-card {
  cursor: pointer;
}

.custom-card:hover {
  transition: all 0.3s ease;
  background-color: rgb(245, 192, 58);
}
</style>