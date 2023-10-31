import axios from "@/plugins/axios"
import { defineStore } from 'pinia'


const useCategory = defineStore('category', {
    state: () => {
        return {
            id: '',
            name: ''

        }
    },

    actions: {
        async getCategory(id) {
            try {
                const response = await axios.get(`categories/show/${id}`)
                this.id = response.data.categories.id
                this.name = response.data.categories.name

            }
            catch {
                (error) => console.log('Error al obtener la categoria: ', error);
            }
        },
        reset() {
            this.id = ''
            this.name = ''

        }
    }

})

export default useCategory