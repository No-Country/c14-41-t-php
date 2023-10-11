import axios from '@/plugins/axios';
import { defineStore } from 'pinia';

export const useAuth = defineStore('auth',{
  state: ()=>{
    return {
      token:null,
      user:{}
    }
  },

  actions:{
    async register (username, email, password){
      this.reset()

      await axios.post('register',{
        username,
        email,
        password
      })
      .then(response =>{
          console.log('La data del Back', response.data)
        //   if(response.data.status){
        //   this.token = response.data.token.token
        //   this.User = response.data.user[0]
        //   this.statusUser = true
        // }

      })
      .catch((error)=>{
        console.log('Error del front _ auth', error)
        this.statusUser = error.response.data.status
      }) 
      
      console.log('Token en Storage_register', this.token)
    },

    async login( email, password){

      await axios.post('login',{
        email,
        password
      })
      .then(response =>{
        
        // if(response.data.status){
        //   //Verdadero
        //   this.token = response.data.token.token
        //   this.User = response.data.user[0]
        //   this.statusUser = true
        // }
        console.log('Respnse del back al front',response)

      })
      .catch((error)=>{
        console.log('Error en Login',error) // en caso de poner un mail erroneo Sale por aca!
      })  
      
    },
    

  }

})