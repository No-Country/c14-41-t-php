<template>
  <h2 class="titulo-menu">Menú</h2>
  <section>
    <div class="carousel-container" v-for="category in categories" :key="category.id">
      <h2 class="category-name">{{ category.name }}</h2>
      <Splide :options="options" aria-label="categories">
        <SplideSlide v-for="food in products" :key="food.id">
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
  perPage: 3, // Number of slides to show at once
  autoplay: false,
  gap: "2rem",
  // autoWidth: true,
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
  margin: 3rem;
}

.category-name {
  font-weight: 700;
  font-family: "Lucida Sans", "Lucida Sans Regular";
  color: rgb(208, 152, 10);
  padding: 1rem;
  text-shadow: 0 0 2px rgba(255, 140, 0, 0.8);
}
</style>
