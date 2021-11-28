import Vue from 'vue'
import App from './App.vue'
import Antd from 'ant-design-vue';
import axios from 'axios';
import 'ant-design-vue/dist/antd.css';

Vue.config.productionTip = false

Vue.use(Antd);

Vue.prototype.$http = axios

new Vue({
  render: h => h(App),
}).$mount('#app')