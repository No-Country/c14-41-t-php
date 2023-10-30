import axios from 'axios';

export default axios.create({
  baseURL: 'https://c14-41-t-php-production.up.railway.app/api/',
  headers: {
    
    'Content-Type': 'application/json'
  }
});
