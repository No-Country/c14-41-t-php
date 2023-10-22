<template>
  <h2 class="titulo-menu">Menú</h2>
  <section>
    <div class="carousel-container" v-for="category in categories" :key="category">
      <h2 class="category-name">{{ category }}</h2>
      <Splide class="splide" :options="options" aria-label="categories">
        <SplideSlide class="splide-slide" v-for="food in getProductsByCategory(category)" :key="food.id">
          <ProductCard :="food" />
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
import axios from "@/plugins/axios"
import { onMounted, ref } from "vue";

let categories = ref([]);
let products = ref([]);

const getProductsByCategory = (category) => {
  return products.value.filter(product => product.id_category === category);
};

const getProducts = (async () => {
  try {
    let dataCategory = []

    const response = await axios.get('products')

    products.value = response.data.products

    //console.log('data del back products', products.value)

    if (products.value && products.value.length > 0) {
      dataCategory = products.value.map(it => {

        return it.id_category

      });
      const dataArr = new Set(dataCategory)
      categories.value = [...dataArr]
    }

  } catch (error) {
    console.error('Error al obtener productos', error);
  }

})

onMounted(() => {
  getProducts()
});

//Define your options here
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