<template>
  <main class="main-container">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
      <li class="nav-item" role="presentation">
        <button class="nav-link active text-dark" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane"
          type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true"><strong>Página
            Principal</strong></button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link text-dark" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane"
          type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false"> <strong>Producto</strong>
        </button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link text-dark " id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane"
          type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">
          <strong>Pedido</strong></button>
      </li>
    </ul>
    <div class="tab-content" id="myTabContent">
      <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
        <PrincipalPage />
      </div>
      <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
        <TableProducts :listProducts="products"/>
      </div>
      <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">Pedido
      </div>
    </div>
    <CategoryModal />
    <AddProducts @sayHi="showAlert"/>
  </main>
</template>

<script setup>
  import TableProducts from '@/components/adminComponents/TableProducts';
  import PrincipalPage from '@/components/adminComponents/PrincipalPage.vue';
  import CategoryModal from '@/components/adminComponents/CategoryModal.vue'
  import AddProducts from '@/components/adminComponents/AddProducts.vue'


  // function showAlert() {
  //   alert('Test componente padre')
  // }
</script>

<style scoped>
.main-container {
  background-color: grey;
}
</style>