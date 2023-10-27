<template>
  <div class="modal" v-if="props.isVisible">
    
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">Editar Producto</h5>
          </div>
          <div class="modal-body">
            <div class="row justify-content-center text-center">
              <div class="col-12" style="background-color: antiquewhite;">
                foto {{image}}
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
                <input v-model="price.value" type="text" class="form-control" id="exampleFormControlInput1" placeholder="$ Precio">
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
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" @click="closeModal(), reset()">Cerrar</button>
            <button type="button" class="btn btn-primary">Guardar</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
  import { defineProps, defineEmits, onMounted, ref, watch } from 'vue'
  import axios from '@/plugins/axios';
  import useProduct from '@/store/producto'
  // import useAuth from '@/store/auth'
  
  // const store = useAuth()
  const storeProduct = useProduct()

  const props = defineProps(["isVisible"]);
  const emit = defineEmits(['close',' getProduct'])

  const closeModal =()=> {
    emit("close");
  }

  let image = ref('')
  let name = ref('')
  let description = ref('')
  let price = ref('')
  let cooking_time = ref('')
  let availability = ref('')
  let id_category = ref('')
  let listCategories = ref('')

  watch(() => {
    if(props.isVisible){
      llenarCampos()
    }
  })

  const getCategories = (async () => {
    try {
      const response = await axios.get('categories')
      listCategories.value = response.data.categories

    } catch (error) {
      console.log('error_get_categories_add_productos', error)
    }
  })

  const reset = () => {
    image.value = ''
    name.value = ''
    description.value = ''
    price.value = ''
    cooking_time.value = ''
    availability.value = ''
    id_category.value = ''
    storeProduct.reset()
  }

  onMounted(()=>{
    getCategories()
  })

  const llenarCampos = (() => {
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

</script>

<style scoped>
  /* Estilos CSS para el modal */
.modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
}

</style>