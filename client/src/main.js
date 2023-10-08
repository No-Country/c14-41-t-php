import "bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";
import { OhVueIcon, addIcons } from "oh-vue-icons";
import { AiOpenAccess, BiArrowDownCircle, BiPencil, BiPower, FaUserCircle, GiArchiveRegister, HiLockClosed, MdAddshoppingcart, MdEmailOutlined, MdRemoveredeyeTwotone, OiEyeClosed, RiLockPasswordLine, RiMenuUnfoldFill } from "oh-vue-icons/icons";
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';

addIcons(GiArchiveRegister, BiPower, RiLockPasswordLine, FaUserCircle, BiArrowDownCircle, MdAddshoppingcart, RiMenuUnfoldFill, MdEmailOutlined, HiLockClosed, AiOpenAccess, MdRemoveredeyeTwotone, OiEyeClosed, BiPencil)

const app = createApp(App)
app.use(router).component("v-icon", OhVueIcon).mount('#app')
