import { defineStore } from 'pinia'

<<<<<<< HEAD
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
=======
export const useAuth = defineStore('auth', {
    state: () => {
        return {
            token: null,
            user: {}
        }
    },

    actions: {
        //TODO manejo de rutas peticiones a la API
    }
>>>>>>> ebdd576eafdc6f9d6f4d2c54dcf2ae56c6679f4c

})