import "bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";
import { OhVueIcon, addIcons } from "oh-vue-icons";
import { BiArrowDownCircle, BiPower, FaUserCircle, GiArchiveRegister, RiLockPasswordLine, RiLoginCircleLine, MdAddshoppingcart, RiMenuUnfoldFill } from "oh-vue-icons/icons";
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';

addIcons(RiLoginCircleLine, GiArchiveRegister, BiPower, RiLockPasswordLine, FaUserCircle, BiArrowDownCircle, MdAddshoppingcart, RiMenuUnfoldFill)

const app = createApp(App)
app.use(router).component("v-icon", OhVueIcon).mount('#app')
