<template>
    <div class="review">
        <detailHead :title="'评论详情'"></detailHead>
        <reviewBody :reviewVal="$route.params"></reviewBody>
    </div>
</template>
<script>
import {mapGetters, mapMutations} from 'vuex'
// import yinyue1 from '../publicComponent/yinyue1.vue'
import detailHead from './detailHead.vue'
import reviewBody from './reviewBody.vue'
import { setTimeout } from 'timers';
export default {
    name:'review',
    data(){
        return{
            show:true,
        }
    },
    components:{
        detailHead,
        reviewBody
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
    },
    destroyed(){
        this.show = false
    },
    beforeRouteEnter (to, from, next) {
        next()
    },
    beforeRouteLeave (to, from, next) {
        console.log(to)
        console.log(from)          
        // if(to.name=='reivewAll'){
        //     ls.setItem('reviewType','B')
        // } 
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
            // if(this.show == false){
            //     this.$loading.show()
            // }else{
            //     this.$loading.hide()

            // }
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
        height: 100%;
        background: #fff;    
        top:0px;
        left: 0px;
        position: relative;   
}
</style>


