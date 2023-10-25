<template>
  <div class="modal fade" id="AddProduct" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">Agregar Producto</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" ></button>
        </div>
        <div class="modal-body">

          <div class="row justify-content-center text-center">
            <div class="col-12" style="background-color: antiquewhite;">
              foto
            </div>
          </div>

          <div class="row justify-content-center text-center">

            <div class="col-6 my-3" >
              <input v-model="name"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre">
            </div>
            <div class="col-6 my-3" >
              <input v-model="description" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Descripción">
            </div>
            <div class="col-6" >
              <input v-model="price"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="$ Precio">
            </div>
            <div class="col-6" >
              <select v-model="id_category" class="form-select" aria-label="Default select example">
                <option :value="categorie.id" v-for="categorie in listCategories" :key="categorie.id">{{categorie.name}}</option>
              </select>
            </div>
            <div class="col-6 my-3" >
              <input v-model="cooking_time" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Tiempo de espera">
            </div>
            <div class="col-6 my-3" >
              <div class="form-check form-switch">
                <label class="form-check-label" for="flexSwitchCheckDefault">Disponible</label>
                <input v-model="availability" class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
              </div>
            </div>

          </div>
          <span class="feedbackError">{{store.feedback }}</span>
        </div>
        <div class="modal-footer">
          <button  type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
          <button type="button" @click.prevent="postProduct()"  class="btn btn-primary">Guardar</button>
          <button v-if="false" @click="handleClick">Prueba</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
  import { ref, onMounted, defineEmits } from 'vue'
  import axios from '@/plugins/axios';
  import useAuth from '@/store/auth'

  const store = useAuth()
  const emit = defineEmits(['sayHi']);

  let image = ref ('')
  let name = ref('')
  let description = ref('')
  let price = ref ('')
  let cooking_time = ref('')
  let availability = ref (false)
  let id_category = ref('1')
  let listCategories = ref('')

  
  const handleClick = () => {
    emit("sayHi", 'Hola desde el padre');
  }

  const reset = ()=>{
    image = ref('')
    name = ref('')
    description = ref('')
    price = ref('')
    cooking_time = ref('')
    availability = ref(false)
    id_category = ref('1')
    listCategories = ref('')
  }


  const getCategories = ( async ()=>{
    try {
      const response = await axios.get('categories')
      listCategories.value = response.data.categories

    } catch (error) {
      console.log('error_get_categories_add_productos', error)
    }
  })
  const postProduct = ( async()=>{
    if(name.value == ''){
      store.notification('Nombre del producto es requerido')
      return
    }
    if(price.value == ''){
      store.notification('El precio del producto es requerido')
      return
    }
    try {
      await axios.post('products/create',{
        image: image.value,
        name: name.value,
        description:description.value,
        price:price.value,
        cooking_time: cooking_time.value,
        id_category: id_category.value,
        availability: availability.value
      })
        .then(response =>{
          store.notification(response.data.message)

          reset()
          
        })
        .catch((error)=>{
          console.log("Error en Post Add Product", error)
        })

    } catch (error) {
      console.log('Error cretate_producto', error)
    }
  })
  
  onMounted(() => {
    getCategories()
    
  });
 
</script>

<style scoped>
</style>