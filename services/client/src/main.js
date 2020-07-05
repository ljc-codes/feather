// =========================================================
// * Vue Material Kit PRO - v1.2.2
// =========================================================
//
// * Product Page: https://www.creative-tim.com/product/vue-material-kit-pro
// * Copyright 2019 Creative Tim (https://www.creative-tim.com)
//
// * Coded by Creative Tim
//
// =========================================================
//
// * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

import Vue from "vue";
import App from "./App.vue";
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import router from "./router/router";
import store from "./store";

import MaterialKit from "./plugins/material-kit";
import vuetify from './plugins/vuetify';
import VueParticles from 'vue-particles';

Vue.config.productionTip = false;

Vue.use(VueParticles);
Vue.use(MaterialKit);

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount("#app");
