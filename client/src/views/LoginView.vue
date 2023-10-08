<template>
  <div class="fondo">
    <div class="form">
      <form class="d-flex-rows">
      
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-12 col-md-8">
              <div class="row p-4 " style="background: rgb(182, 105, 17);">
    
                <div class="col-12">
                  <h4 class="head-sesion">Iniciar Sesion</h4>
                  <h6 class="head-sesion">¿No tienes una cuenta? <a href="">Registrate</a></h6>
                  <div class="form-floating mb-3 mt-3">
                    <input type="email" class="form-control shadow" id="floatingInput" placeholder="name@example.com">
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
                
                <div class="col-12 ">
                  <div class="form-floating mb-3 mt-3">
                    <input v-model="password" :type="type" class="form-control shadow" id="floatingPassword" placeholder="Password">
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
                  <v-icon class="ico-btn" @click="noPassword()" v-if="showEye" animation="pulse" name="md-removeredeye-twotone" />
                  <v-icon class="ico-btn" @click="showPassword()" v-if="showEyeClose"  name="oi-eye-closed" animation="pulse" />
                </div>

                <div class="mb-5 mt-3 ingresar">
                  <button class="btn btn-info shadow rounded-pill" style="width:10em;">Iniciar sesio</button>
                </div>
                <div class="row"></div>
              </div>
            </div>
          </div>
          
        </div>
      </form>
    </div>
  </div>
</template>

<script  setup>
  import { ref, watchEffect } from 'vue'

  let password = ref('') //tiene que hacer referencia al storage "mas adelante"
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

</script>

<style scoped>
  .head-sesion {
    color: #faf9f9;
  }
  a:link {
  text-decoration: none;
  }

  a {
    color:#fbaf0a;
  }

  .form {
    z-index: 100;
  }

  .ico-btn {
    cursor: pointer;
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
  @media (max-width: 700px) {
  .container {
    align-content: center;
    top: 5vh;
    margin-bottom: 5vh;
    width: 80%;
  }
}

</style>