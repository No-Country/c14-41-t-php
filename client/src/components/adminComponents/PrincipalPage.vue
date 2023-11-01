<template>
    <div class="general-container">
        <div class="card bg-warning" v-for="info in restInfo" :key="info.id">
            <h5 class="card-header">Información general</h5>
            <div class="card-body">
                <h5 class="card-title">{{ info.name }}</h5>
                <ul>
                    <li>Email: {{ info.email }}</li>
                    <li>Dirección: {{ info.direction }}</li>
                    <li>Tel: {{ info.phone }}</li>
                    <li>Información:
                        <div class="desc-container">{{ info.description }}</div>
                    </li>
                </ul>

                <a href="#" class="btn btn-dark text-white">Editar Información</a>
            </div>
        </div>

        <div class="table-responsive bg-dark table-custom">
            <h3 class="category-title">Categorías</h3>
            <table class="table table-dark table-hover">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="category in categories" :key="category.id">
                        <td>{{ category.name }}</td>
                        <td>
                            <v-icon @click="clickEdit(category.id)" name="bi-pencil" scale="2.0" class="me-3 edit"
                                fill="#0DCAF0" />
                            <v-icon @click="clickRemove(category.id, category.name)" name="io-remove-circle-sharp"
                                scale="2.0" class="remove" fill="red" />
                        </td>
                    </tr>
                </tbody>
            </table>
            <button  type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#newCategoryModal">Nueva
                categoria
            </button>
        </div>  
        <EditCategoryModal :modalVisible="clickEdit" v-if="modalVisible" @getCategories="getCategories"
            @clickEdit="clickEdit" />
            <CategoryModal @getCategories="getCategories " />
    </div>
</template>

<script setup>
import CategoryModal from '@/components/adminComponents/CategoryModal.vue'
import { ref, onMounted } from 'vue';
import axios from '@/plugins/axios';
import EditCategoryModal from './EditCategoryModal.vue';
import useCategory from '@/store/category';


const storedCategory = useCategory();

const urls = [
    'categories',
    'restaurant/info'
];

let modalVisible = ref(false)
let categories = ref([]);
let restInfo = ref([]);


const getCategories = (async () => {
    try {
        const [categoriesResponse, restInfoResponse] = await Promise.all([
            axios.get(urls[0]),
            axios.get(urls[1])
        ]);

        categories.value = categoriesResponse.data.categories;
        restInfo.value = restInfoResponse.data.restaurant_info;
    }
    catch (error) {
        console.log('Error obtaining products ', error)
    }
});

onMounted(() => {
    getCategories()
})

const clickEdit = (id) => {

    modalVisible.value = !modalVisible.value
    storedCategory.getCategory(id)
  
}

const clickRemove = async (id, name) => {
    const confirmed = window.confirm("Estas seguro de que desea eliminar la categoria: " + name + "?");
    if (confirmed) {
        try {
            const response = await axios.delete(`categories/delete/${id}`);
            if (response.data.success) {
                alert("Categoria numero: " + id + " se elimino correctamente")
            }
        } catch (error) {
            console.error('There was an error deleting the category', error);
        } finally {
            getCategories()
        }

    }

}

</script>

<style scoped>
.general-container {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
    justify-content: space-around;
    align-items: baseline;
    margin: 3rem;
    gap: 3rem;
}

.desc-container {
    width: 18.75rem;
}

.table-custom {
    padding: 2rem;
    border-radius: 10px;
}

.category-title {
    color: orange;
    font-weight: 400;
    font-family: 'montserat';
    text-align: center;
}

.edit,
.remove {
    cursor: pointer;
}
</style>