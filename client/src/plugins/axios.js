import axios from 'axios';

export default axios.create({
  // baseURL: 'https://c14-41-t-php-production.up.railway.app/api/',
  baseURL: 'http://127.0.0.1:8000/api/',
  headers: {
    
    'Content-Type': 'application/json'
  }
});
