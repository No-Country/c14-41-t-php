<template>
  <NavBar :info="restInfo"/>
  <main class="main-container">
    <ProductSection />
  </main>
  <FooterHome />
</template>
<script setup>
import NavBar from '@/components/NavBar.vue';
import ProductSection from '@/components/ProductSection.vue';
import FooterHome from '@/components/FooterHome.vue';
import axios from '@/plugins/axios';
import { ref, onMounted } from 'vue'

let restInfo = ref('');

const getInfo = (async () => {
  try {
    const response = await axios.get('restaurant/info')
    restInfo.value = response.data.restaurant_info[0];
    
  }
  catch (error) {
    console.log('Error obtaining products ', error)
  }
});

onMounted(() => {
  getInfo()
  
  })


</script>

<style scoped>
.main-container {
  background-color: #191919;
}
</style>
