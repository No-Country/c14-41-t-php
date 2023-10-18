<template>
    <div class="card">
        <!-- <img :src="props.propFood.image" class="card-img-top custom-img" alt="comida"> -->
        <img  class="card-img-top custom-img" alt="comida">
        <div class="card-body">
            <h5 class="card-title">{{ props.propFood.name }}</h5>
            <p class="card-text">{{ props.propFood.desc }}</p>
            <b>{{ propFood.price }}</b>
        </div>
        <a href="#" class="btn btn-secondary">Agregar al carrito</a>
    </div>
</template>


<script setup>
    import  { defineProps } from 'vue'

   const props = defineProps(['prodFood'])

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