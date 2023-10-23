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
                    <form action="" method="post"></form>
                    <div class="mb-3">
                        <input v-model="newCategory" type="text" class="form-control" id="exampleFormControlInput1"
                            placeholder="Nombre de la categoría">
                    </div>
                </div>
                <div class="modal-footer">
                    <form @submit.prevent="createNewCategory()">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import axios from '@/plugins/axios'
const newCategory = '';

// watchEffect(() => {
//         if (newCategory.value !== '' && newCategory.value.length > 3) {
//             const newCategoryResult = newCategory.value.toUpperCase();
//             // createNewCategory(newCategoryResult);
//             console.log('watching input value', newCategoryResult)
//         }
//     })

const createNewCategory = async () => {
    try {
        const response = await axios.post('/categories/create', { newCategory });

        if (response.data.success) {
            console.log('New category created');
        }
    } catch (error) {
        console.error('There was an error creating the category ', error);
    }
    console.log(newCategory)
};

</script>

<style scoped>
.modal-dialog_custom {
    background-color: rgb(33, 37, 41);
}
</style> 