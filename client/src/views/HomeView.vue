<template>
  <NavBar />
  <main class="main-container">
    <ModalUser />
    <ProductSection />
  </main>
  <FooterHome />
</template>
<script setup>
import NavBar from '@/components/NavBar.vue';
import ProductSection from '@/components/ProductSection.vue';
import FooterHome from '@/components/FooterHome.vue';
import ModalUser from '@/components/ModalUser.vue';


</script>

<style scoped>
.main-container {
  background-color: #191919;
}
</style>
