<template>
  <div class="card custom-card">
      <img v-if="props.id_category=='EMPANADAS'" :src= "empanadas" class="card-img-top custom-img" alt="comida"> 
      <img v-if="props.id_category=='PIZZAS'" :src= "Pizzas" class="card-img-top custom-img" alt="comida"> 
      <img v-if="props.id_category=='HAMBURGUESAS'" :src= "hamburguesas" class="card-img-top custom-img" alt="comida"> 
      <img v-if="props.id_category=='PASTAS'" :src= "pastas" class="card-img-top custom-img" alt="comida"> 
      <img v-if="props.id_category=='SANGUCHES'" :src= "sandwiches" class="card-img-top custom-img" alt="comida"> 
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

import empanadas from '@/assets/products/empanada.jpg'
import Pizzas from '@/assets/products/pizza.jpg'
import hamburguesas from '@/assets/products/hamburguesa.jpg'
import pastas from '@/assets/products/pastas.jpg'
import sandwiches from '@/assets/products/sandwiches.jpg'

const storeCarrito = useCarrito()


const props = defineProps(
  {
    id: Number,
    name: String,
    description: String,
    price: Number,
    id_category: Number,
    cooking_time: Number,
    image: String
  },
)

const AddCarrito = (itemSelected) => {
  storeCarrito.producto.push(itemSelected)
  console.log('seleccion de carrito', storeCarrito.producto)
  console.log(props)
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