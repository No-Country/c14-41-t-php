<template>
  <div class="fondo">
    <div class="form">
      <form class="d-flex-rows">
      
        <div class="container">
          <div class="row justify-content-center fondo">
            <div class="col-sm-12 col-md-8">
              <div class="row p-4" style="background:#0F161E;">
    
                <div class="col-12">
                  <h4 class="head-sesion">Iniciar Sesion</h4>
                  <h6 class="head-sesion">¿No tienes una cuenta? <router-link :to="{name:'register'}" > Registrate</router-link> </h6> 
                  <div class="form-floating mb-3 mt-3">
                    <input v-model="email" type="email" class="form-control" :class="{'is-valid': errorEmail, 'is-invalid':!isEmailValid}" id="floatingInput" placeholder="">
                    <span v-if="!isEmailValid" class="invalid-feedback">Email no válido</span>
                    <label for="floatingInput">
                      <div class="row">
                        <div class="col">
                          <v-icon name="md-email-outlined" />
                        </div>
                        Correo
                      </div>
                    </label>
                  </div>
                </div>
                
                <div class="col-12 content">
                  <div class="form-floating mb-3 mt-3">
                    <input v-model="password" :type="type" class="form-control" :class="{'is-valid':errorPassword, 'is-invalid':!isPasswordValid}" id="floatingPassword" placeholder="">
                    <div class="fixed-corner">
                      <v-icon class="ico-btn" @click="noPassword()" v-if="showEye" animation="pulse" name="md-removeredeye-twotone" />
                      <v-icon class="ico-btn" @click="showPassword()" v-if="showEyeClose" name="oi-eye-closed" animation="pulse" />
                    </div>
                    <span v-if="!isPasswordValid" class="invalid-feedback">Contraseña debe tener entre 8 y 16 caracteres.</span>
                    <label for="floatingPassword">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon v-if="chageIcon" name="hi-lock-closed" />
                            <v-icon v-else name="ai-open-access" />
                          </div>
                          Contraseña
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="mb-5 mt-3 ingresar">
                  <button @click.prevent="loguearse" class="btn btn-primary rounded-pill" style="width:10em;">Iniciar sesion</button>
                  <div class="mt-4">
                    <span class="feedbackError">{{store.feedback }}</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </form>
    </div>
  </div>
</template>

<script  setup>
  import { ref, watchEffect, watch } from 'vue'
  import useAuth from '@/store/auth'

  //uso de funciones en el store
  const store = useAuth()

  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  const longRegex = /^.{8,16}$/

  const isEmailValid = ref(true)
  const isPasswordValid = ref(true)
  const errorEmail = ref(false)
  const errorPassword = ref(false)
  // const isEmailValid = ref(true)

  const password = ref('') //tiene que hacer referencia al storage "mas adelante"
  const email = ref('')
  let chageIcon = ref(true)
  let showEye= ref(false)
  let showEyeClose= ref(false)
  let type=ref('password')

 

  watchEffect(() => {
    
    if(password.value!='' && showEye.value!=true){
      showEyeClose = true
    } else {
      showEyeClose = false
    } 

  })
  watch(email, (newEmail) => {
    isEmailValid.value = emailRegex.test(newEmail);

    if (isEmailValid.value == true && email.value != '') {
      errorEmail.value = isEmailValid.value == true & email.value != ''
    }

    if (email.value == '') {
      errorEmail.value = false
      isEmailValid.value = true
    }
  });

  watch(password, (newPassword) => {

    isPasswordValid.value = longRegex.test(newPassword);

    if (isPasswordValid.value == true && password.value != '') {
      errorPassword.value = isPasswordValid.value == true & password.value != ''
    }

    if (password.value == '') {
      errorPassword.value = false
      isPasswordValid.value = true
    }
  });

  const showPassword=(()=>{
    chageIcon.value = !chageIcon.value
    type.value='text'
    showEye.value = true
  })

  const noPassword=(()=>{
    chageIcon.value = !chageIcon.value
    type.value='password'
    showEye.value = false
  })

  const loguearse = async () => {
    const msg = "Alguno de los campos ingresados no es válido"

    if(email.value != '' && password.value != ''){

      if(email.value != '' && !errorEmail.value) {
        store.notification(msg)
        return
      }

      if(password.value != '' && !errorPassword.value) {
        store.notification(msg)
        return
      }

      store.login(email.value, password.value)

    }else{
      store.notification('Todos los campos son requeridos')
      return
    }
  }

</script>

<style scoped>
  .head-sesion {
    color: #faf9f9;
  }
  a:link {
  text-decoration: none;
  }

  a {
    color: #D0980A;
  }
  .ico-btn{
    cursor: pointer;
  }

  .form {
    z-index: 100;
  }

  .fondo {
    background-color: #212529 ;
  }

  .content {
  position: relative;
  
  }

  .fixed-corner {
    position: absolute;
    top: 0;
    right: 0;
  }

  .container {
    align-content: center;
    text-align: center;
    align-self: center;
    justify-self: center;
    position: relative;
    top: 10vh;
    width: 80vh;
    background: #ffffff;
    border-radius: 10px;
    margin-bottom: 10vh;
    opacity: 0.88;
  }

  .feedbackError {
    color: red;
  }

  @media (max-width: 700px) {
  .container {
    align-content: center;
    top: 5vh;
    margin-bottom: 5vh;
    width: 80%;
  }

  
}

</style>