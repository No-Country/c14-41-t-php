<template>
  <div class="modal fade" id="AddProduct" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">Agregar Producto</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">

          <div class="row justify-content-center text-center">
            <div class="col-12" style="background-color: antiquewhite;">
              foto
            </div>
          </div>

          <div class="row justify-content-center text-center">

            <div class="col-6 my-3" >
              <input  type="text" class="form-control" id="exampleFormControlInput1" placeholder="NAME">
            </div>
            <div class="col-6 my-3" >
              <input  type="text" class="form-control" id="exampleFormControlInput1" placeholder="DESCRIPTION">
            </div>
            <div class="col-6" >
              <input  type="text" class="form-control" id="exampleFormControlInput1" placeholder="PRICE">
            </div>
            <div class="col-6" >
              <input  type="text" class="form-control" id="exampleFormControlInput1" placeholder="ID_CATEGORY">
            </div>
            <div class="col-6 my-3" >
              <input  type="text" class="form-control" id="exampleFormControlInput1" placeholder="COOKING_TIME">
            </div>
            <div class="col-6 my-3" >
              <input  type="text" class="form-control" id="exampleFormControlInput1" placeholder="AVAILABILITY">
            </div>

          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
          <button type="button" class="btn btn-primary">Guardar</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
</script>

<style scoped>
</style>