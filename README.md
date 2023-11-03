# Take-Food
Equipo c14-41-t-php de No-Country
## Descripcion del proyecto

Con el aumento del comercio digital TakeFood se creó con el objetivo de seguir esta ola y de innovar nuestro negocio en la forma de llegar a nuevos clientes y que tenga la posibilidad de ver nuestro menú de forma cómoda y siempre actualizada.

El principal objetivo es que nuestros clientes tengan a simple vista todos nuestros productos y con muy pocos clicks puedan realizar sus pedidos. Que nuestros administradores puedan gestionar de forma sencilla sus productos y que tengas las herramientas para realizar análisis de datos.

### Caracteristicas

Se tomaron en cuenta los siguiente puntos para su desarrollo:

✔ **Registro y login de Cliente** para que nuevos cliente puedan registrarse con sus datos y puedan loguearse más adelante y agilizar al momento de hacer sus pedidos.

✔ **Administración del restaurante** el dueño tendrá una página aparte donde podrá gestionar su información, pedidos y productos. Además de algunas estadísticas para realizar análisis de datos.

✔ **Completa gestión de productos** el dueño tiene las herramientas necesarias para poder crear sus productos, modificarlos y eliminarlos. Además de poder darle categoría, disponibilidad o tiempo de preparación.

✔ **Página principal cómoda** con visibilidad a todos los productos ofrecidos divididos en categorías y los accesos principal a un solo click, perfil, productos, carrito y restaurante.

✔ **Carrito de pedido** donde puedas visualizar tu pedido con el total a pagar y su tiempo aproximado de preparación.

### Tecnologias utilizadas

![Logo](https://www.vectorlogo.zone/logos/php/php-ar21.svg)
![Logo](https://www.vectorlogo.zone/logos/mysql/mysql-ar21.svg)
![Logo](https://www.vectorlogo.zone/logos/laravel/laravel-ar21.svg)
![Logo](https://www.vectorlogo.zone/logos/vuejs/vuejs-ar21.svg)

### Requisitos

🚨 Es necesario usar la versión de **PHP v8 o superior**, **Composer**, **Node.js** y **MYSQL** así como crear un archivo **.env** en la carpeta **_/api_** con las variables de entorno necesarias, puedes abrir el archivo **.env.example** para ver un ejemplo con todas las variables de entorno.

Primero clona el repositorio desde GitHub:

```shell
git clone https://github.com/No-Country/c14-41-t-php.git
```

#### 🛠️ Frontend
<a href="https://c14-41-t-php.vercel.app/" target="_blank" rel="noopener noreferrer"><img src="https://img.shields.io/badge/Demo_proyecto-000000?style=for-the-badge&logo=vercel&logoColor=white"/></a>
##### 🚀 Deploy
Muévete a la carpeta del proyecto:

```shell
cd client/
```
Instala las dependencias con el siguiente comando:

```shell
npm install
```
Inicia la aplicación de **desarrollo** usando el siguiente comando:

```shell
npm run dev
```
##### 👉🏻 Desarrolladores 
| <img src="https://avatars.githubusercontent.com/u/104918884?v=4" width=50>| <img src="https://avatars.githubusercontent.com/u/91695943?v=4" width=50>| 
|:-:|:-:|
| **Diego Romero**| **Leandro Insfran**| 
| <a href="https://github.com/Diego-Romero1"><img src="https://img.shields.io/badge/github-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a> <a href="https://www.linkedin.com"><img src="https://img.shields.io/badge/linkedin%20-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white"/></a> | <a href="https://github.com/L-insfran"><img src="https://img.shields.io/badge/github-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a> <a href="https://www.linkedin.com"><img src="https://img.shields.io/badge/linkedin%20-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white"/></a> | 

#### 🛠️ Backend
<a href="https://c14-41-t-php-production.up.railway.app/" target="_blank" rel="noopener noreferrer"><img src="https://img.shields.io/badge/Api_proyecto-000000?style=for-the-badge&logo=railway&logoColor=white"/></a>
##### 🚀 Deploy
Muévete a la carpeta del proyecto:

```shell
cd api/
```
Instala las dependencias con el siguiente comando:

```shell
composer install
```
Generama una key:

```shell
php artisan key:generate
```
Realiza una migracion y un ingreso datos de prueba:
  
```shell
php artisan migrate --seed
```
Inicia la aplicación de **desarrollo** usando el siguiente comando:

```shell
php artisan run dev
```
##### 👉🏻 Desarrolladores 
| <img src="https://avatars.githubusercontent.com/u/87375224?v=4" width=50>| <img src="https://avatars.githubusercontent.com/u/102096760?v=4" width=50>| <img src="https://avatars.githubusercontent.com/u/145609931?v=4" width=50>|
|:-:|:-:|:-:|
| **Facundo Massa**| **Luis Escobar**| **Damian Cano**|
| <a href="https://github.com/facundomassa"><img src="https://img.shields.io/badge/github-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a> <a href="https://www.linkedin.com/in/facundo-massa"><img src="https://img.shields.io/badge/linkedin%20-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white"/></a> | <a href="https://github.com/RuisuX10"><img src="https://img.shields.io/badge/github-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a> <a href="https://www.linkedin.com"><img src="https://img.shields.io/badge/linkedin%20-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white"/></a> | <a href="https://github.com/Damian-77"><img src="https://img.shields.io/badge/github-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white"/></a> <a href="https://www.linkedin.com/in/damian-cano-1311a01a1/"><img src="https://img.shields.io/badge/linkedin%20-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white"/></a> |
