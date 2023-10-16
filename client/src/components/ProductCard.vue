<template>
    <div class="card">
        <img :src="propFood.image" class="card-img-top custom-img" alt="comida">
        <div class="card-body">
            <h5 class="card-title">{{ propFood.name }}</h5>
            <p class="card-text">{{ propFood.desc }}</p>
            <b>{{ propFood.price }}</b>
        </div>
        <a href="#" class="btn btn-secondary">Agregar al carrito</a>
    </div>
</template>


<script>
export default {
    props: {
        propFood: Object,
    }
}
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