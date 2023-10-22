<template>
  <div class="badge rounded-pill text-light">
    <div class=" row mx-2 d-flex-rows justify-content-center align-items-center" id="componentBadge">

      <div class="col">
        <v-icon scale="1.8" name="fa-user-circle" />
        <span v-if="store.statusUser" class="nameUser" data-bs-toggle="modal" data-bs-target="#staticBackdrop">{{
          store.user.email }}</span>
        <span v-else class="nameUser"><router-link :to="{ name: 'login' }">{{ store.user.email }}</router-link></span>
        <span v-if="store.statusUser" class="nameUser">{{ store.user }}</span>
        <span v-else class="nameUser"><router-link :to="{ name: 'login' }">{{ store.user }}</router-link></span>
      </div>

      <div v-if="store.statusUser" class="col">
        <div class="btn-group dropstart">
          <v-icon data-bs-toggle="dropdown" aria-expanded="false" class="dropdown-toggle" hover animation="wrench"
            id="SidebarIcon" type="btn" scale="1.4" name="bi-arrow-down-circle" />
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#"><v-icon class="me-1" sacale="1.2" name="ri-lock-password-line" />Cambiar
                contraseña</a></li>
            <li><a class="dropdown-item" @click="logOut()" href="#"><v-icon name="bi-power" scale="1.2"
                  class="me-1" />Cerrar sesion</a>
            </li>
          </ul>
        </div>

      </div>

      <div class="col">
        <div class="position-relative" style="width: 30px;">
          <a type="button" class="text-light position-relative" data-bs-toggle="offcanvas"
            data-bs-target="#offcanvasRight" aria-controls="offcanvasRight" href="#"><v-icon name="md-addshoppingcart"
              scale="1" class="m-1" hover animation="wrench" /></a>
          <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
            0
            <span class="visually-hidden">unread messages</span>
          </span>
        </div>
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
          <div class="offcanvas-header">
            <h5 id="offcanvasRightLabel">Carrito de Compras</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ProducAdd />
            <ProducAdd />
          </div>
        </div>
      </div>

    </div>
  </div>
</template>


<script setup>
import useAuth from '@/store/auth';
import ProducAdd from '@/components/ProductAdd.vue'
//import router from '@/router'

const store = useAuth()

const logOut = () => {
  store.reset()
}

</script>

<style  scoped>
a:link {
  text-decoration: none;
}

.nameUser>a {
  color: white;
}

.nameUser {
  vertical-align: super;
  margin-left: 4px;
}

.nameUser:hover {
  cursor: pointer;
}

.btn-group {
  vertical-align: baseline;
}

.offcanvas-body {
  background-color: rgb(33, 37, 41);
  text-align-last: left;
  height: 100vh;
  padding-left: 35px;
}
</style>