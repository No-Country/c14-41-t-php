<template>
  <main class="main-container">
    <NavBarAdmin />
    <ul class="nav nav-tabs sty" id="myTab" role="tablist">
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
    
    <FooterHome />
  </main>
</template>

<script setup>
  import NavBarAdmin from '@/components/adminComponents/NavBarAdmin.vue';
  import FooterHome from '@/components/FooterHome.vue';
  import TableProducts from '@/components/adminComponents/TableProducts';
  import PrincipalPage from '@/components/adminComponents/PrincipalPage.vue';
  import CategoryModal from '@/components/adminComponents/CategoryModal.vue'
  
  </script>

<style scoped>
.main-container {
  background-color: grey;
  padding-bottom: 5rem;
}
.sty {
  justify-content: space-between;
}
.sty li{
  width: 33%;
}
.sty li button{
  width: 100%;
}
.tab-pane{
  margin: 3rem 0px 3rem 0;
}
</style>