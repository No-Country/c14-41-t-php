import axios from '@/plugins/axios';
import { defineStore } from 'pinia';

const useAuth = defineStore('auth',{
  state: ()=>{
    return {
      token:null,
      user:{},
      feedback:''
    }
  },

  actions:{
    async register (terminos, name, email, password, tel, city, altura, street, lastname ){
      
      if(terminos == false){
        this.feedback =" Acepatar términos y condiciones para registrarse"
        setTimeout(()=>{
          this.feedback=''
        },4000)
        return
      }
      
      await axios.post('register',{
        name,
        lastname,
        street,
        altura,
        city,
        tel,
        email,
        password,
        terminos
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
      
      
      console.log('Token en Storage_register', this.feedback)
    },

    notification(messaje){
        this.feedback = messaje
        setTimeout(()=>{
          this.feedback=''
        },4000)
        return
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

export default useAuth