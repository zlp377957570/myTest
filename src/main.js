// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import { Button,Dialog,Row, Col,Icon,Tab, Tabs  } from 'vant';
import './assets/css/base.css';
import axios from '../node_modules/axios';

// 全局注册
Vue.prototype.$axios = axios;
Vue.use(Dialog);
Vue.use(Button);
Vue.use(Icon);
Vue.use(Row).use(Col);
Vue.use(Tab).use(Tabs);
Vue.config.productionTip = false
Vue.prototype.HOST = "/api"
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  axios,
  components: { App },
  template: '<App/>'
})
