<template>
    <!-- Modal edit category -->
    <div class="modal" id="editCategoryModal" data-bs-backdrop="static">
        <div class="modal-dialog modal-dialog_custom">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Editar categoría</h5>
                    <button type="button" @click="props.modalVisible" class="btn-close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <input v-model="name" type="text" class="form-control" id="exampleFormControlInput1"
                            placeholder="Nombre de la categoría">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" @click="props.modalVisible" class="btn btn-secondary"
                        data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { defineProps } from 'vue';

const props = defineProps(['modalVisible'])

</script>

<style scoped>
/* Estilos CSS para el modal */
.modal {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    display: flex;
    justify-content: center;
    align-items: center;
}
</style>