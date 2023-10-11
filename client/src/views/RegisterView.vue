<template>
  <div class="fondo">
    <div class="form">
      <form class="d-flex-rows">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-12 col-md-8">
              <div class="row p-4 " style="background: rgb(182, 105, 17);">

                <div class="col-12">
                  <h4 class="head-sesion">Registrarse</h4>
                  <h6 class="head-sesion">¿ya tenés cuenta? <a href="">Iniciar Sesión</a></h6>
                  
                  <div class="form-floating mb-2 mt-3">
                    <input v-model="name" required type="text" class="form-control" id="floatingName" :class="{'is-valid':errorName,'is-invalid':!isNameValid}" placeholder="">
                    <span v-if="!isNameValid" >Nombre no válido</span>
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
                      <span v-if="!isLastNameValid">Apellido no válido</span>
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
                      <span v-if="!isStreetValid">Calle No válida</span>
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
                      <span v-if="!isAlturaValid">Altura No válida</span>
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
                      <span v-if="!isCityValid">Ciudad No válida</span>
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
                      <span v-if="!isTelValid">Teléfono no válido, sólo números</span>
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
                      <span v-if="!isEmailValid">Email no válido</span>
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
                    <span v-if="!isPasswordValid">Contraseña debe tener entre 8 y 16 caracteres.</span>
                    <span v-if="!isRepasswordValid"> Las contraseñas no coinciden.</span>
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
                  <button class="btn btn-info shadow rounded-pill" style="width:10em;">registrarse</button>
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

<script setup>
  import { ref, watch } from 'vue'

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
  let errorName = ref(false)
  let errorLastName = ref(false)
  let errorStreet = ref(false)
  let errorAltura = ref(false)
  let errorCity = ref(false)
  let errorTel = ref (false)
  let errorEmail = ref(false)
  let errorPassword = ref(false)
  let errorRePassword = ref (false)
  

  
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
  
  watch(name, (newName) => {
    isNameValid.value = nameRegex.test(newName);

    if (isNameValid.value == true && name.value != '') {
      errorName = isNameValid.value == true && name.value != ''
    }

    if (name.value == '') {
      errorName = false
      isNameValid.value = true
    }

  });
  
  watch(lastName, (newLastName) => {
    isLastNameValid.value = nameRegex.test(newLastName);

    if(isLastNameValid.value == true && lastName.value !=''){
      errorLastName = isLastNameValid.value == true && lastName.value !=''
    }

    if(lastName.value == ''){
      errorLastName = false
      isLastNameValid.value = true
    }

  });

  watch(street, (newStreet) => {
    isStreetValid.value = noCaracterEspecial.test(newStreet);

    if(isStreetValid.value == true && street.value !=''){
      errorStreet = isStreetValid.value == true && street.value !=''
    }

    if(street.value == ''){
      errorStreet = false
      isStreetValid.value = true
    }

  });
  
  watch(altura, (newAltura) => {
    isAlturaValid.value = numerosRex.test(newAltura);

    if(isAlturaValid.value == true && altura.value !=''){
      errorAltura = isAlturaValid.value == true && altura.value !=''
    }

    if(altura.value == ''){
      errorAltura = false
      isAlturaValid.value = true
    }
  });

  watch(city, (newCity) => {
    isCityValid.value = noCaracterEspecial.test(newCity);
    
    if(isCityValid.value == true && city.value !=''){
      errorCity = isCityValid.value == true & city.value !=''
    }
    
    if(city.value == ''){
      errorCity = false
      isCityValid.value = true
    }
  });
  
  watch(tel, (newTel) => {
    isTelValid.value = numerosRex.test(newTel);
    
    if(isTelValid.value == true && tel.value !=''){
      errorTel = isTelValid.value == true & tel.value !=''
    }
    
    if(tel.value == ''){
      errorTel = false
      isTelValid.value = true
    }
  });

  watch(email, (newEmail) => {
    isEmailValid.value = emailRegex.test(newEmail);

    if(isEmailValid.value == true && email.value !=''){
      errorEmail = isEmailValid.value == true & email.value !=''
    }
    
    if(email.value == ''){
      errorEmail = false
      isEmailValid.value = true
    }
  });
  
  watch(password, (newPassword) => {

    isPasswordValid.value = longRegex.test(newPassword);

    if(isPasswordValid.value == true && password.value !=''){
      errorPassword = isPasswordValid.value == true & password.value !=''
    }
    
    if(password.value == ''){
      errorPassword = false
      isPasswordValid.value = true
    }
  });

  watch(confirmPassword, (newRePassword) => {
    isRepasswordValid.value = password.value === newRePassword

    if(isRepasswordValid.value == true && confirmPassword.value !=''){
      errorRePassword = isRepasswordValid.value == true & confirmPassword.value != ''
    }

    if(confirmPassword.value == ''){
      errorRePassword = false
      isRepasswordValid.value= true
    }

  })



</script>

<style scoped>
<<<<<<< HEAD
  .head-sesion {
    color: #faf9f9;
  }

  a:link {
    text-decoration: none;
  }

  a {
    color: #fbaf0a;
  }
=======
.fondo {
  background-image: url("@/assets/FondoRegister.jpg");
  top: 0;
  bottom: 0;
  width: 100vw;
  height: 100vh;

}

.img {
  position: fixed;
  width: 100%;
  height: 100vh;
}
>>>>>>> ebdd576eafdc6f9d6f4d2c54dcf2ae56c6679f4c

.form {
  z-index: 100;
}

<<<<<<< HEAD
  .ico-btn {
    cursor: pointer;
  }
=======
.login {
  width: 150px;
  height: 80%;
  margin: 0px auto;
  margin-top: 0px;
  top: 20px;
  display: block;
}
>>>>>>> ebdd576eafdc6f9d6f4d2c54dcf2ae56c6679f4c

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
<<<<<<< HEAD

  </style>
=======
}
</style>
>>>>>>> ebdd576eafdc6f9d6f4d2c54dcf2ae56c6679f4c
