import VueSplide from '@splidejs/vue-splide';
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

app.use(router).use(pinia).component("v-icon", OhVueIcon).use(VueSplide).mount('#app')
