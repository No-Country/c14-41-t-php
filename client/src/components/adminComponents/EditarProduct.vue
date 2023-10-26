<template>
  <div class="modal fade" id="EditProduct" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">Editar Producto</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">

          <div class="row justify-content-center text-center">
            <div class="col-12" style="background-color: antiquewhite;">
              foto
            </div>
          </div>

          <div class="row justify-content-center text-center">

            <div class="col-6 my-3">
              <input v-model="name.value" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre">
            </div>
            <div class="col-6 my-3">
              <input v-model="description.value" type="text" class="form-control" id="exampleFormControlInput1"
                placeholder="Descripción">
            </div>
            <div class="col-6">
              <input v-model="price.value" type="text" class="form-control" id="exampleFormControlInput1"
                placeholder="$ Precio">
            </div>
            <div class="col-6">
              <select v-model="id_category.value" class="form-select" aria-label="Default select example">
                <option :value="categorie.id" v-for="categorie in listCategories" :key="categorie.id">{{categorie.name}}
                </option>
              </select>
            </div>
            <div class="col-6 my-3">
              <input v-model="cooking_time.value" type="text" class="form-control" id="exampleFormControlInput1"
                placeholder="Tiempo de espera">
            </div>
            <div class="col-6 my-3">
              <div class="form-check form-switch">
                <label class="form-check-label" for="flexSwitchCheckDefault">Disponible</label>
                <input v-model="availability.value" class="form-check-input" type="checkbox" role="switch"
                  id="flexSwitchCheckDefault">
              </div>
            </div>

          </div>
          <span class="feedbackError">{{store.feedback }}</span>
        </div>
        <div class="modal-footer">
          <button @click="reset" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
          <button type="button" @click.prevent="putProduct(store.idProd)" class="btn btn-primary">Guardar</button>
          <button @click="aca">test</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
  import { ref, onMounted } from 'vue'
  import axios from '@/plugins/axios';
  import useAuth from '@/store/auth'
  import useProduct from '@/store/producto'

  const store = useAuth()
  const storeProduct = useProduct()

  let image = ref(storeProduct.image)
  let name = ref(storeProduct.name)
  let description = ref(storeProduct.description)
  let price = ref(storeProduct.price)
  let cooking_time = ref(storeProduct.cooking_time)
  let availability = ref(storeProduct.availability)
  let id_category = ref(storeProduct.id_category)
  let listCategories = ref('')

  const reset = () => {
    image.value = ''
    name.value = ''
    description.value = ''
    price.value = ''
    cooking_time.value = ''
    availability.value = false
    id_category.value = ''
    //listCategories = ref('')
    storeProduct.reset()
  }

  const aca = (()=>{
  console.log(storeProduct.image) 
  console.log(storeProduct.name)
    console.log(storeProduct.description)
  console.log(storeProduct.price)
    console.log(storeProduct.cooking_time)
    console.log(storeProduct.availability)
    console.log(storeProduct.id_category)
     image.value = ref(storeProduct.image)
     name.value = ref(storeProduct.name)
     description.value = ref(storeProduct.description)
     price.value = ref(storeProduct.price)
     cooking_time.value = ref(storeProduct.cooking_time)
     availability.value = ref(storeProduct.availability)
    id_category.value = ref(storeProduct.id_category)
  })
  const getCategories = (async () => {
    try {
      const response = await axios.get('categories')
      listCategories.value = response.data.categories

    } catch (error) {
      console.log('error_get_categories_add_productos', error)
    }
  })
  const putProduct = (async (id) => {
  
    if (name.value == '') {
      store.notification('Nombre del producto es requerido')
      return
    }
    if (price.value == '') {
      store.notification('El precio del producto es requerido')
      return
    }
    try {
      await axios.put(`products/edit/${id}`, {
        image: image.value,
        name: name.value,
        description: description.value,
        price: price.value,
        cooking_time: cooking_time.value,
        id_category: id_category.value,
        availability: availability.value
      })
        .then(response => {
          store.notification(response.data.message)

          reset()

        })
        .catch((error) => {
          console.log("Error en Post Add Product", error)
        })

    } catch (error) {
      console.log('Error cretate_producto', error)
    }
  })

  onMounted(() => {
    getCategories()
    aca()
  });

</script>

<style scoped>
</style>