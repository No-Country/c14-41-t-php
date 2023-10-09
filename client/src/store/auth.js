import { defineStore } from 'pinia'

export const useAuth = defineStore('auth',{
  state: ()=>{
    return {
      token:null,
      user:{}
    }
  },

  actions:{
    //TODO manejo de rutas peticiones a la API
  }

})