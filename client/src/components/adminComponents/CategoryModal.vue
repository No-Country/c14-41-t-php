<template>
    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog_custom">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Ingresar nueva categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <input v-model="name" type="text" class="form-control" id="exampleFormControlInput1"
                            placeholder="Nombre de la categoría">
                    </div>
                </div>
                <div class="modal-footer">
                    <form>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" @click.prevent="createNewCategory()" class="btn btn-primary">Guardar</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { ref } from 'vue'
import axios from '@/plugins/axios'
const name = ref('');


const createNewCategory = async () => {

    if ((name.value != '' && name.value.length > 3)) {
        const nameToUpper = name.value.toUpperCase();
        try {
            const response = await axios.post('/categories/create', { name: nameToUpper });

            if (response.data.success) {
                alert('Nueva categoria creada');
            }
        } catch (error) {
            console.error('There was an error creating the category ', error);
        }
        return
    }

    alert('El campo no debe estar vacio')

};

</script>

<style scoped>
.modal-dialog_custom {
    background-color: rgb(33, 37, 41);
}
</style> 