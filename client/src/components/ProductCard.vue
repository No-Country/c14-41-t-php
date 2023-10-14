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
    <!-- <div class="card" style="width: 18rem;">
        <img src="..." class="card-img-top" alt="..."> 
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
    </div> -->
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
    height: auto;
    cursor: pointer;
}

.card:hover {
    background-color: azure;
}
</style>