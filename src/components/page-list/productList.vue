<template>
    <div class="productList">
        <detailHead :title="'商品列表'"></detailHead>
        <h3>抱歉未找到该商品数据，请联系管理员</h3>
    </div>
</template>
<script>
import {mapGetters, mapMutations} from 'vuex'
// import yinyue1 from '../publicComponent/yinyue1.vue'
import ls from '../../assets/js/ls.js'
import detailHead from './detailHead.vue'
import { setTimeout } from 'timers';
export default {
    name:'productList',
    data(){
        return{
            show:true,
        }
    },
    components:{
        detailHead
    },
    created(){
         console.log(this.$store.getters.detailHeaderUp)
        // window.addEventListener("popstate", function(e) { 
        //     setTimeout(()=>{
        //         this.$store.commit('chDetailHeaderUp',false)   
        //     },500)
        //                 return false
        // alert("我监听到了浏览器的返回按钮事件啦");//根据自己的需求实现自己的功能 
        // }, false);
        // console.log(history.popstate)
        // history.pushState(null, null, document.URL);
        // window.addEventListener('popstate', function () {
        // history.pushState(null, null, document.URL);
        // });        
    },
    mounted(){
        this.changeFade()
    },
    destroyed(){
        this.show = false
        this.$loading.hide()
    },
    beforeRouteEnter (to, from, next) {
        next()
    },
    beforeRouteLeave (to, from, next) {
        // console.log(to)
        // console.log(from)          
        if(from.name=='productList'){
            ls.setItem('reviewType','x')
        } 
        this.$store.commit('chDetailHeaderUp',false)   
        setTimeout(()=>{
            next()
        },300)
    },
    beforeRouteUpdate (to, from, next) {
        next()
    },    
　  watch: {
    // 　　'$route' (to, from) {
    //     console.log(to)
    //     console.log(from)        
    // 　　　　let isBack = this.$router.isBack  //  监听路由变化时的状态为前进还是后退
    // 　　　　　　if(isBack) {
    // 　　　　　　　　this.transitionName = 'slide-right'
    // 　　　　　　} else {
    // 　　　　　　       this.transitionName = 'slide-left'
    // 　　　　　}
    // 　　    this.$router.isBack = false
    // 　　}
　  },    
    methods:{
        changeFade(){
            console.log(this.$store.getters.detailHeaderUp)
            this.show = !this.show
            console.log(this.show)
            if(this.show == false){
                this.$loading.show()
            }else{
                this.$loading.hide()

            }
            // this.$loading.show({
            //     size: 10,
            //     text: '加载中'
            // })            
        }
    }
}
</script>
<style lang="less" scoped>
    .productList{
        width: 7.5rem;
        height: 100%;
        background: #aaa;    
        top:0px;
        left: 0px;
        position: relative;   
        h3{
            font-size: .72rem;
            margin-top: 50px;
        }
}
</style>


