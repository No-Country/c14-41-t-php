<template>
  <div class="card">
    <img :src="props.image" class="card-img-top custom-img" alt="comida"> 
    <div class="card-body">
    <h5 class="card-title">{{ props.name }}</h5>
    <p class="card-text">{{ props.description }}</p>
    <p class="card-text">{{ props.cooking_time }}</p>
    <b>{{ props.price }}</b>
  </div>
    <a href="#" class="btn btn-secondary">Agregar al carrito</a> 
  </div>
</template>


<script setup>
  import  { defineProps } from 'vue'

const props = defineProps(
  {
    name: String,
    description: String,
    price: Number,
    id_category: Number,
    cooking_time: Number,
    image:Image
  },
  
)
</script>

<style scope>
.card {
    cursor: pointer;
}

.card:hover {
    transition: all 0.3s ease;
    background-color: rgb(245, 192, 58);
}
</style>