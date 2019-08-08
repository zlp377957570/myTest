import Vue from 'vue'
import Vuex from 'vuex'

//引入之后，对vuex进行引用
Vue.use(Vuex)
//创建且声明一个对象
export const store = new Vuex.Store({
    state:{
        detailHeaderUp:false
    },
    getters: {
        detailHeaderUp: state => state.detailHeaderUp
    },
    mutations: {
        chDetailHeaderUp(state,products){
            state.detailHeaderUp = products
        }
    }
})