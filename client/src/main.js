import "bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";
import { OhVueIcon, addIcons } from "oh-vue-icons";
import { AiOpenAccess, BiArrowDownCircle, BiPencil, BiPower, FaUserCircle, GiArchiveRegister, HiLockClosed, MdAddshoppingcart, MdEmailOutlined, MdRemoveredeyeTwotone, OiEyeClosed, RiLockPasswordLine, RiMenuUnfoldFill } from "oh-vue-icons/icons";
import { createPinia } from 'pinia';
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';

addIcons(GiArchiveRegister, BiPower, RiLockPasswordLine, FaUserCircle, BiArrowDownCircle, MdAddshoppingcart, RiMenuUnfoldFill, MdEmailOutlined, HiLockClosed, AiOpenAccess, MdRemoveredeyeTwotone, OiEyeClosed, BiPencil)

const app = createApp(App)
const pinia = createPinia()
<<<<<<< HEAD
app.use(router).use(pinia).component("v-icon", OhVueIcon).mount('#app')
=======
app.use(router).use(pinia).component("v-icon", OhVueIcon).mount('#app')
>>>>>>> ebdd576eafdc6f9d6f4d2c54dcf2ae56c6679f4c
