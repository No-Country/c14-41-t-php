import axios from 'axios';

export default axios.create({
  baseURL: 'http://127.0.0.1:8000/api/',
  headers: {
    
    'Content-Type': 'application/json'
  }
});

// export const fetchData = (categories) => {
//   Make an Axios GET request to fetch the JSON data
//   axios.get('http://localhost:3000/categories')
//     .then(response => {
//       categories.value = response.data;
//       console.log(response.data)
//     })
//     .catch(error => {
//       console.error('Error fetching data:', error);
//     });
// };

// export const fetchProducts = (products) => {
//   axios.get('http://localhost:3000/foods')
//     .then(response => {
//       products.value = response.data;
//     })
//     .catch(error => {
//       console.log("Error fetching data: ", error)
//     })
// }