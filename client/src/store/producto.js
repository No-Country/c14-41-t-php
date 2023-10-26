import axios from "@/plugins/axios"
import { defineStore } from 'pinia'

const useProducto = defineStore('carrito',{
  state: ()=>{
    return {
      id:'',
      image:'',
      name: '',
      description: '',
      price: '',
      cooking_time: '',
      availability: '',
      id_category: ''
    }
  },

  actions:{
    async getProducto(id){
      
      try {
        const response = await axios.get(`products/show/${id}`)
        this.id = response.data.products.id
        this.name = response.data.products.name
        this.image = response.data.products.image
        this.description = response.data.products.description
        this.price = response.data.products.price
        this.cooking_time = response.data.products.cooking_time
        this.availability = response.data.products.availability
        this.id_category = response.data.products.id_category
    
      } catch (error) {
        console.error('Error al obtener producto', error);
      }
    },

    reset() {
      this.id = ''
      this.name = ''
      this.image = ''
      this.description = ''
      this.price = ''
      this.cooking_time = ''
      this.availability = ''
      this.id_category = ''
    }
  }

})

export default useProducto