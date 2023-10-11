<template>
  <h2 class="titulo-menu">Menues</h2>
  <FilterCategory />
  <section>
    <div>
      <Splide :options="options" aria-label="My Favorite Images">
        <SplideSlide v-for="food of foodList" :key="food.id">
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
import FilterCategory from "@/components/FilterCategory.vue";

//object section here

const foodList = [
  {
    id: 1,
    name: "Plato 1",
    desc: "this is an description of the product",
    price: "$1500",
    image: require("@/assets/burger.png"),
  },
  {
    id: 2,
    name: "Plato 2",
    desc: "this is an description of the product",
    price: "$1500",
    image: require("@/assets/burger.png"),
  },
  {
    id: 3,
    name: "Plato 3",
    desc: "this is an description of the product",
    price: "$1500",
    image: require("@/assets/burger.png"),
  },
  {
    id: 4,
    name: "Plato 4",
    desc: "this is an description of the product",
    price: "$1500",
    image: require("@/assets/burger.png"),
  },
  {
    id: 5,
    name: "Plato 5",
    desc: "this is an description of the product",
    price: "$1500",
    image: require("@/assets/burger.png"),
  },
  {
    id: 6,
    name: "Plato3",
    desc: "this is an description of the product",
    price: "$1500",
    image: require("@/assets/burger.png"),
  },
];

// Define your options here
const options = {
  type: "loop",
  perPage: 3, // Number of slides to show at once
  autoplay: false,
  gap: "2rem",
  padding: "3rem",
  autoWidth: true,
};
</script>

<style scoped>
.titulo-menu {
  font-weight: 700;
  font-family: "Lucida Sans", "Lucida Sans Regular";
  color: rgb(208, 152, 10);
  padding: 3rem;
  text-align: center;
  text-shadow: 0ch;
}
</style>
