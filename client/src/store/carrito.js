import { defineStore } from 'pinia'

const useCarrito = defineStore('carrito',{
  state: ()=>{
    return {
      producto:[]
    }
  },

  actions:{

  }

})

export default useCarrito