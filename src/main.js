// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import { Button,Dialog,Row, Col,Icon,Tab, Tabs ,Tabbar, TabbarItem,Lazyload,PullRefresh,CountDown,Swipe, SwipeItem,Popup,ActionSheet,ImagePreview,Toast } from 'vant';
import './assets/css/myBase.css';
import axios from '../node_modules/axios';
import VueTouch from 'vue-touch';
import {store} from './store/store';
import Loading from './components/publicComponent/loading' 
Vue.use(Loading)

// 全局注册
Vue.prototype.$axios = axios;
Vue.use(VueTouch,{name:'v-touch'});
Vue.use(Dialog);
Vue.use(Button);
Vue.use(Icon);
Vue.use(Row).use(Col);
Vue.use(Tab).use(Tabs);
Vue.use(Tabbar).use(TabbarItem);
Vue.use(Lazyload);
Vue.use(PullRefresh);
Vue.use(CountDown);
Vue.use(Swipe).use(SwipeItem);
Vue.use(Popup);
Vue.use(ActionSheet );
Vue.use(ImagePreview );
Vue.use(Toast );
Vue.config.productionTip = false
if (process.env.NODE_ENV === 'production') {
  Vue.prototype.HOST = "./data/product"
}else{
  Vue.prototype.HOST = "/api"
}
/* eslint-disable no-new */
window.addEventListener('popstate', function (e) {
  router.isBack = true
},false)
// VueRouter.prototype.goBack = function () { 
//   　　this.isBack = true
//   　　window.history.go(-1)
// }
new Vue({
  store:store,//使用store
  el: '#app',
  router,
  axios,
  components: { App },
  template: '<App/>'
})
