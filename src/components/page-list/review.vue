<template>
    <div class="review">
        <div class="sss" @click="changeFade">发射</div>
        <transition :name="fadeName" tag="div" class="aaa">
            <detailHead  v-if="$store.getters.detailHeaderUp"></detailHead>
        </transition>        
         <yinyue1></yinyue1>
    </div>
</template>
<script>
import {mapGetters, mapMutations} from 'vuex'
import yinyue1 from '../publicComponent/yinyue1.vue'
import detailHead from './detailHead.vue'
import { setTimeout } from 'timers';
export default {
    name:'review',
    data(){
        return{
            show:true,
            fadeName:'rights'
        }
    },
    components:{
        detailHead,
        yinyue1
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
        setTimeout(()=>{
        this.$store.commit('chDetailHeaderUp',true)   
        },300)
    },
    destroyed(){
        this.show = false
    },
    beforeRouteEnter (to, from, next) {
        next()

    },
    beforeRouteLeave (to, from, next) {
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
    .review{
        width: 7.5rem;
        height: 1000px;
        // background: rgb(218, 38, 32);
                    background: #aaa;    
        top:0px;
        left: 0px;
        position: relative;
        .sss{
            position: absolute;
            z-index: 999;
            width: 150px;  
            background: transparent;          
            font-size: .48rem;           
            // margin-right: -20px;
            left: -40px;
            top:10px;
        }
        .vvv{
            height: 80px; 
            background: #eee;    
        }

        .rights-enter,.rights-leave-to{
            transform:  translateY(-80px);     
        }
        .rights-leave{
            // transform:  translateX(0px);
        }          
        .rights-enter-active,.rights-leave-active{
            transition: all .3s;
        }      
   
}
</style>


