<template>
  <h2 class="titulo-menu">Menú</h2>
  <section>
    <!--<div>
       <Splide class="carousel-container" :options="options" aria-label="My Favorite Images">
        <SplideSlide>
          <div class="card">
            <img src="@/assets/burger.png" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </SplideSlide>
        <SplideSlide>
          <div class="card">
            <img src="@/assets/burger.png" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </SplideSlide>
        <SplideSlide>
          <div class="card">
            <img src="@/assets/burger.png" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </SplideSlide>
        <SplideSlide>
          <div class="card">
            <img src="@/assets/burger.png" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </SplideSlide>
      </Splide>
    </div> -->



    <div class="carousel-container" v-for="category in categories" :key="category.id">
      <h2 class="category-name">{{ category.name }}</h2>
      <Splide class="splide" :options="options" aria-label="categories">
        <SplideSlide class="splide-slide" v-for="food in products" :key="food.id">
          <ProductCard :propFood="food" />
        </SplideSlide>
      </Splide>
    </div>
  </section>
</template>

<script setup>
//importations
import { Splide, SplideSlide } from "@splidejs/vue-splide";
import "@splidejs/vue-splide/css/skyblue";
import ProductCard from "@/components/ProductCard.vue";
import { fetchData, fetchProducts } from "@/plugins/axios"
import { onMounted, ref } from "vue";

const categories = ref([]);
const products = ref([]);


onMounted(() => {
  fetchData(categories);
  fetchProducts(products)
});

// Define your options here
const options = {
  type: "loop",
  drag: "free",
  snap: true,
  perPage: 3, // Number of slides to show at once
  autoplay: false,
  gap: "2rem",
  breakpoints: {
    640: {
      perPage: 1,
      arrows: false,
    },
  }
};
</script>

<style scoped>
.titulo-menu {
  font-weight: 700;
  font-family: "Lucida Sans", "Lucida Sans Regular";
  color: rgb(208, 152, 10);
  padding-top: 3rem;
  text-align: center;
  text-shadow: 0 0 2px rgba(255, 140, 0, 0.8);

}

.carousel-container {
  margin: 1rem;
}

.category-name {
  font-weight: 700;
  font-family: "Lucida Sans", "Lucida Sans Regular";
  color: rgb(208, 152, 10);
  padding: 1rem;
  text-shadow: 0 0 2px rgba(255, 140, 0, 0.8);
}

.splide {
  padding: 0 4rem 3rem 4rem;
}

@media screen and (max-width: 480px) {
  .carousel-container {
    padding: 0 0 2rem 0;
  }

  .splide {
    padding: 2rem 0;
  }

}
</style>
