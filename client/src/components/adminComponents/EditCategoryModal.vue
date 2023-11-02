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
                        <input v-model="name.value" type="text" class="form-control" id="exampleFormControlInput1"
                            :placeholder="name.value">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" @click="props.modalVisible" class="btn btn-secondary"
                        data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" @click="putCategory(storedCategory.id)" class="btn btn-primary">Guardar</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
//importations
import axios from '@/plugins/axios';
import { defineProps, defineEmits, ref, watch } from 'vue';
import useCategory from '@/store/category';

//defining variables
const props = defineProps(['modalVisible']);
const storedCategory = useCategory();
const emits = defineEmits(['getCategories', 'clickEdit'])

let name = ref('');

watch(() => {
    if (props.modalVisible) {
        //storing the category's name
        name.value = ref(storedCategory.name);

    }
})


//put request

const putCategory = (async (id) => {

    if (name.value == '') {
        alert('Nombre de la categoria es requerido')
    } else
        try {
            await axios.put(`categories/edit/${id}`, {
                name: name.value.value
            }).then(response => {
                console.log(response.data.message)
                alert(response.data.message)
            }).then(response => {
                console.log(response.data.message)
            }).catch(error => console.log("there was an error updating the category: ", error))
            reset();
            emits("getCategories", "clickEdit");
            props.modalVisible()

        } catch (error) {
            console.log('Error al editar la categoria', error);
        }
})

const reset = () => {
    name.value = ''
    storedCategory.reset()
}
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