<template>
  <NavBar />
  <main class="main-container">
    <ProductSection />
  </main>
</template>
<script setup>
import NavBar from '@/components/NavBar.vue';
import ProductSection from '@/components/ProductSection.vue';



</script>

<style scoped>
.main-container {
  background-color: #191919;
}
</style>
