import axios from '@/plugins/axios';
import { defineStore } from 'pinia';

const useAuth = defineStore('auth',{
  state: ()=>{
    return {
      token:null,
      statusUser:false,
      user:{email:'Not logged in'},
      feedback:''
    }
  },

  actions:{
    async register (terminos, name, email, password, phone, city, street_number, street, last_name ){
      this.reset()
      if(terminos == false){
        this.feedback =" Acepatar términos y condiciones para registrarse"
        setTimeout(()=>{
          this.feedback=''
        },4000)
        return
      }
      
      await axios.post('user/create',{
        name,
        last_name,
        street,
        street_number,
        city,
        phone,
        email,
        password
      })
      .then(response =>{

        if(response.data.success){
          this.token = response.data.token
          this.statusUser = response.data.success
          this.user.email = email
        }

      })
      .catch((error)=>{
        console.log('ERROR al registrarse', error)
        
      }) 
      
    },

    async login( email, password){
      this.reset()
      await axios.post('user/login',{
        email,
        password
      })
      .then(response =>{
        
        if(response.data.status){
          //Verdadero
          this.token = response.data.token
          this.statusUser = response.data.status
          this.user.email = email
        }
      })
      .catch((error)=>{
        console.log('Error en Login',error.response.data.message) // en caso de poner un mail erroneo Sale por aca!
        this.notification(error.response.data.message)
      })  
      
    },

    notification(messaje){
        this.feedback = messaje
        setTimeout(()=>{
          this.feedback=''
        },4000)
        return
    },
    
    reset (){
      this.token = null,
      this.statusUser = false,
      this. user.email='Not logged in',
      this.feedback=''
    }
  }

})

export default useAuth