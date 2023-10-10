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
                    <input type="texto" class="form-control shadow" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">
                      <div class="row">
                        <div class="col">
                          <v-icon name="bi-pencil" />
                        </div>
                        Nombre
                      </div>
                    </label>
                  </div>
                </div>

                <div class="col-12 ">
                  <div class="form-floating mb-2 ">
                    <input v-model="password" type="text" class="form-control shadow" id="floatingLastname"
                      placeholder="Password">
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
                    <input v-model="password" type="text" class="form-control shadow" id="floatingStree"
                      placeholder="Password">
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
                    <input v-model="password" type="text" class="form-control shadow" id="floatingHeight"
                      placeholder="Password">
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
                    <input v-model="password" type="text" class="form-control shadow" id="floatingCity"
                      placeholder="Password">
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
                    <input v-model="password" type="text" class="form-control shadow" id="floatingPhone"
                      placeholder="Password">
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
                    <input v-model="password" type="email" class="form-control shadow" id="floatingEmail"
                      placeholder="Password">
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
                    <input v-model="password" type="password" class="form-control shadow" id="floatingPassword"
                      placeholder="Password">
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
                    <input v-model="password" type="password" class="form-control shadow" id="floatingRePassword"
                      placeholder="Password">
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
  // import { ref, watchEffect } from 'vue'

  // let password = ref('') //tiene que hacer referencia al storage "mas adelante"
  // let chageIcon = ref(true)
  // let showEye = ref(false)
  // let showEyeClose = ref(false)
  // let type = ref('password')

  // watchEffect(() => {

  //   if (password.value != '' && showEye.value != true) {
  //     showEyeClose = true
  //   } else {
  //     showEyeClose = false
  //   }

  // })

  // const showPassword = (() => {
  //   chageIcon.value = !chageIcon.value
  //   type.value = 'text'
  //   showEye.value = true
  // })

  // const noPassword = (() => {
  //   chageIcon.value = !chageIcon.value
  //   type.value = 'password'
  //   showEye.value = false
  // })

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
