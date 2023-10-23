<template>
  <div class="container table-responsive ">
    <div class="d-flex justify-content-between" >
      <h1>Mis Productos</h1>
      <button type="button" @click="clickAdd()" class="btn btn-warning my-2">Agregar</button>
    </div>
    <table class="table table-striped table-bordered border-primary align-middle table-hover">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Nombre</th>
          <th scope="col">Descripción</th>
          <th scope="col">Precio</th>
          <th scope="col">Categoria</th>
          <th scope="col">Tiempo Retiro</th>
          <th scope="col">Habilitado</th>
          <th scope="col">Acciones</th>
        </tr>
      </thead>

      <tbody>
        <tr v-for="product in products" :key="product.id">
          <td>{{ product.id }}</td>
          <td>{{ product.name }}</td>
          <td>{{ product.description }}</td>
          <td>$ {{ product.price }}</td>
          <td>{{ product.id_category }}</td>
          <td>{{ product.cooking_time }} Min</td>
          <td>si</td>
          <td>
            <v-icon @click="clickEdit()" name="bi-pencil" scale="1.2" class="me-3 edit" fill="#0DCAF0" />
            <!-- <v-icon @click="clickAdd()" name="io-add-circle-sharp" scale="1.2" class="me-3 add" fill="green" /> -->
            <v-icon @click="clickRemove()" name="io-remove-circle-sharp" scale="1.2" class=" remove" fill="red" />
          </td>
        </tr>
        <!-- Agrega más filas según sea necesario -->
      </tbody>
    </table>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import axios from "@/plugins/axios";

onMounted(() => {
  getProducts()
});

let products = ref([]);

const getProducts = (async () => {
  try {
    const response = await axios.get('products')
    products.value = response.data.products

  } catch (error) {
    console.error('Error al obtener productos', error);
  }

})

//Fuciones para las acciones del crud
const clickEdit = () => {
  alert('editar producto')
}
const clickAdd = () => {
  alert('Agregar producto')
}
const clickRemove = () => {
  alert('Eliminar producto')
}
</script>

<style scoped>
.edit,
.add,
.remove {
  cursor: pointer;
}
</style>