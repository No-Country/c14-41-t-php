<template>
  <div class="fondo">
    <div class="form">
      <form class="d-flex-rows ">

        <div class="container">
          <div class="row justify-content-center fondo">
            <div class="col-sm-12 col-md-8">
              <div class="row p-4 " style="background:#0F161E;">

                <div class="col-12">
                  <h4 class="head-sesion">Registrarse</h4>
                  <h6 class="head-sesion">¿ya tenés cuenta?<router-link :to="{name:'login'}"> Iniciar Sesión</router-link></h6>
                  
                  <div class="form-floating mb-2 mt-3">
                    <input v-model="name" required type="text" class="form-control" id="floatingName" :class="{'is-valid':errorName,'is-invalid':!isNameValid}" placeholder="">
                    <span v-if="!isNameValid" class="invalid-feedback" >Nombre no válido</span>
                    <label for="floatingName">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Nombre
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-2 ">
                    <input required  type="text" class="form-control" :class="{'is-valid':errorLastName, 'is-invalid':!isLastNameValid}"
                    v-model="lastName" id="floatingLastname"
                      placeholder="">
                      <span v-if="!isLastNameValid" class="invalid-feedback">Apellido no válido</span>
                    <label for="floatingLastname">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Apellido
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-2">
                    <input v-model="street" type="text" class="form-control" id="floatingStree" :class="{'is-valid':errorStreet, 'is-invalid':!isStreetValid}"
                      placeholder="">
                      <span v-if="!isStreetValid" class="invalid-feedback">Calle No válida</span>
                    <label for="floatingStree">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Calle
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-2">
                    <input v-model="altura" type="text" class="form-control" id="floatingHeight" :class="{'is-valid':errorAltura, 'is-invalid':!isAlturaValid}"
                      placeholder="">
                      <span v-if="!isAlturaValid" class="invalid-feedback">Altura No válida</span>
                    <label for="floatingHeight">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Altura
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-2">
                    <input v-model="city" type="text" class="form-control" id="floatingCity" :class="{'is-valid':errorCity, 'is-invalid':!isCityValid}"
                      placeholder="">
                      <span v-if="!isCityValid" class="invalid-feedback">Ciudad No válida</span>
                    <label for="floatingCity">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Ciudad
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-2">
                    <input v-model="tel" required type="text" class="form-control" id="floatingPhone" :class="{'is-valid': errorTel, 'is-invalid':!isTelValid}"
                      placeholder="">
                      <span v-if="!isTelValid" class="invalid-feedback">Teléfono no válido, sólo números</span>
                    <label for="floatingPhone">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Telefono
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-2">
                    <input v-model="email" type="email" required class="form-control" id="floatingEmail" :class="{'is-valid': errorEmail, 'is-invalid':!isEmailValid}"
                      placeholder="">
                      <span v-if="!isEmailValid" class="invalid-feedback">Email no válido</span>
                    <label for="floatingEmail">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Email
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-2">
                    <input v-model="password" required type="password" class="form-control" id="floatingPassword" :class="{'is-valid':errorPassword, 'is-invalid':!isPasswordValid}"
                      placeholder="">
                    <label for="floatingPassword">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Contraseña
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-3 ">
                    <input required v-model="confirmPassword" type="password" class="form-control" id="floatingRePassword" :class="{'is-valid':errorRePassword, 'is-invalid':!isRepasswordValid}"
                      placeholder="">
                    <span v-if="!isPasswordValid" class="invalid-feedback">Contraseña debe tener entre 8 y 16 caracteres.</span>
                    <span v-if="!isRepasswordValid" class="invalid-feedback"> Las contraseñas no coinciden.</span>
                    <label for="floatingRePassword">
                      <label for="floatingInput">
                        <div class="row">
                          <div class="col">
                            <v-icon name="bi-pencil" />
                          </div>
                          Repetir contraseña
                        </div>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="form-check">
                  <input class="form-check-input" type="checkbox" v-model="terminos" value="" id="flexCheckIndeterminate">
                  <label class="form-check-label" for="flexCheckIndeterminate">
                    Acepto términos y condiciones
                  </label>
                </div>
                <div class="mb-5 mt-3 ingresar">
                  <button @click.prevent="createUser()" class="btn btn-primary rounded-pill" style="width:10em;">Registrarse</button> 
                  <div class="mt-4">
                    <span class="feedbackError">{{store.feedback }}</span>
                  </div>
                </div >
              </div>
            </div>
          </div>

        </div>
      </form>
    </div>
  </div>
</template>

<script setup>
  import { ref, watch } from 'vue'
  import useAuth from '@/store/auth'
  import router from '@/router'

  //uso de funciones en el store
  const store = useAuth()

  //expreiones regulares
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  const nameRegex = /^[a-zA-Z\s]*$/;
  const longRegex = /^.{8,16}$/
  const numerosRex = /^[0-9]+$/
  const noCaracterEspecial = /^[a-zA-Z0-9\s]+$/

  //control de validaciones
  const isNameValid = ref(true)
  const isLastNameValid = ref(true)
  const isStreetValid = ref(true)
  const isAlturaValid = ref(true)
  const isCityValid = ref(true)
  const isTelValid = ref(true)
  const isEmailValid = ref(true)
  const isPasswordValid = ref(true)
  const isRepasswordValid = ref (true)
  const errorName = ref(false)
  const errorLastName = ref(false)
  const errorStreet = ref(false)
  const errorAltura = ref(false)
  const errorCity = ref(false)
  const errorTel = ref (false)
  const errorEmail = ref(false)
  const errorPassword = ref(false)
  const errorRePassword = ref (false)



  //Variables en los inputs
  const name = ref('')
  const lastName = ref('')
  const street = ref('')
  const altura = ref('')
  const city = ref('')
  const tel = ref('')
  const email = ref('')
  const password = ref('')
  const confirmPassword = ref('')
  const terminos = ref(false)

  
  //watch para controlar las validaciones
  watch(name, (newName) => {
    isNameValid.value = nameRegex.test(newName);

    if (isNameValid.value == true && name.value != '') {
      errorName.value = isNameValid.value == true && name.value != ''
    }

    if (name.value == '') {
      errorName.value = false
      isNameValid.value = true
    }

  });
  
  watch(lastName, (newLastName) => {
    isLastNameValid.value = nameRegex.test(newLastName);

    if(isLastNameValid.value == true && lastName.value !=''){
      errorLastName.value = isLastNameValid.value == true && lastName.value !=''
    }

    if(lastName.value == ''){
      errorLastName.value = false
      isLastNameValid.value = true
    }

  });

  watch(street, (newStreet) => {
    isStreetValid.value = noCaracterEspecial.test(newStreet);

    if(isStreetValid.value == true && street.value !=''){
      errorStreet.value = isStreetValid.value == true && street.value !=''
    }

    if(street.value == ''){
      errorStreet.value = false
      isStreetValid.value = true
    }

  });
  
  watch(altura, (newAltura) => {
    isAlturaValid.value = numerosRex.test(newAltura);

    if(isAlturaValid.value == true && altura.value !=''){
      errorAltura.value = isAlturaValid.value == true && altura.value !=''
    }

    if(altura.value == ''){
      errorAltura.value = false
      isAlturaValid.value = true
    }
  });

  watch(city, (newCity) => {
    isCityValid.value = noCaracterEspecial.test(newCity);
    
    if(isCityValid.value == true && city.value !=''){
      errorCity.value = isCityValid.value == true & city.value !=''
    }
    
    if(city.value == ''){
      errorCity.value = false
      isCityValid.value = true
    }
  });
  
  watch(tel, (newTel) => {
    isTelValid.value = numerosRex.test(newTel);
    
    if(isTelValid.value == true && tel.value !=''){
      errorTel.value = isTelValid.value == true & tel.value !=''
    }
    
    if(tel.value == ''){
      errorTel.value = false
      isTelValid.value = true
    }
  });

  watch(email, (newEmail) => {
    isEmailValid.value = emailRegex.test(newEmail);

    if(isEmailValid.value == true && email.value !=''){
      errorEmail.value = isEmailValid.value == true & email.value !=''
    }
    
    if(email.value == ''){
      errorEmail.value = false
      isEmailValid.value = true
    }
  });
  
  watch(password, (newPassword) => {

    isPasswordValid.value = longRegex.test(newPassword);

    if(isPasswordValid.value == true && password.value !=''){
      errorPassword.value = isPasswordValid.value == true & password.value !=''
    }
    
    if(password.value == ''){
      errorPassword.value = false
      isPasswordValid.value = true
    }
  });

  watch(confirmPassword, (newRePassword) => {
    isRepasswordValid.value = password.value === newRePassword

    if(isRepasswordValid.value == true && confirmPassword.value !=''){
      errorRePassword.value = isRepasswordValid.value == true & confirmPassword.value != ''
    }

    if(confirmPassword.value == ''){
      errorRePassword.value = false
      isRepasswordValid.value= true
    }

  })

  
const createUser = async()=> {
  const msg = "Alguno de los campos ingresados no es válido"

  if(name.value !='' && lastName.value !='' && email.value !='' && password.value !='' && confirmPassword.value != ''){
    if (name.value != '' && !errorName.value) {
      store.notification(msg)
      return
    }

    if (lastName.value != '' && !errorLastName.value) {
      store.notification(msg)
      return
    }

    if (street.value != '' && !errorStreet.value) {
      store.notification(msg)
      return
    }

    if (altura.value != '' && !errorAltura.value) {
      store.notification(msg)
      return
    }

    if (city.value != '' && !errorCity.value) {
      store.notification(msg)
      return
    }

    if (tel.value != '' && !errorTel.value) {
      store.notification(msg)
      return
    }

    if (email.value != '' && !errorEmail.value) {
      store.notification(msg)
      return
    }

    if (password.value != '' && !errorPassword.value) {
      store.notification(msg)
      return
    }

    if (confirmPassword.value != '' && !errorRePassword.value) {
      store.notification(msg)
      return
    }
  }else{
    store.notification('Nombre, Apellido, Email, contraseña y re-confirmacion de contraseña son campos obligatorios')
    return
  }

  await store.register(terminos.value, name.value, email.value, password.value, tel.value, city.value, altura.value, street.value, lastName.value)

  if (store.statusUser) {
    //Acceso ok
    router.push({ name: 'home' })
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

  a, .form-check-label {
    color: #D0980A;
  }

  .form {
    z-index: 100;
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
  .fondo {
    background-color: #212529 ;
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
