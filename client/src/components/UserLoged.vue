<template>
  <div class="badge rounded-pill text-light">
    <div class=" row mx-2 d-flex-rows justify-content-center align-items-center" id="componentBadge">
      <div class="col ">
        <v-icon scale="1.8" name="fa-user-circle" />
        <span class="nameUser">{{ user }}</span>
      </div>

      <div class="col">
        <div class="btn-group dropstart">
          <v-icon data-bs-toggle="dropdown" aria-expanded="false" class="dropdown-toggle" hover animation="wrench"
            id="SidebarIcon" type="btn" scale="1.4" name="bi-arrow-down-circle" />
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#"><v-icon class="me-1" sacale="1.2" name="ri-lock-password-line" />Cambiar
                contraseña</a></li>
            <li><a class="dropdown-item" @click="logOut()" href="#"><v-icon name="bi-power" scale="1.2" class="me-1" />Cerrar sesion</a>
            </li>
          </ul>
        </div>

      </div>
      <div class="col">
        <a type="button" class="text-light" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
          aria-controls="offcanvasRight" href="#"><v-icon name="md-addshoppingcart" scale="1" class="m-1" hover
            animation="wrench" /></a>

        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
          <div class="offcanvas-header">
            <h5 id="offcanvasRightLabel">Carrito</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            ...
          </div>
        </div>
      </div>
    </div>
  </div>
</template>


<script setup>
import useAuth from '@/store/auth'
import router from '@/router'

const store = useAuth()

const logOut = () => {
  store.reset()
  router.push({ name: 'login' })
}
const user = store.user.email

</script>

<style  scoped>
.nameUser {
  vertical-align: super;
  margin-left: 4px;
}

#SidebarIcon:hover {
  cursor: pointer;
}

.btn-group {
  vertical-align: baseline;
}
</style>