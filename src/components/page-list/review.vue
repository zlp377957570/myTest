<template>
    <div class="review">
        <div class="sss" @click="changeFade">111111111</div>
        <transition :name="fadeName" tag="div" class="aaa">
            <!-- <detailHead></detailHead> -->
            <div class="vvv" v-if="show">2222222222222</div>
        </transition>        
    </div>
</template>
<script>
import detailHead from './detailHead.vue'
export default {
    name:'review',
    data(){
        return{
            show:true,
            fadeName:'rights'
        }
    },
    components:{
        detailHead
    },
    created(){

    },
    destroyed(){
        // this.show = false
    },
    beforeRouteUpdate (to, from, next) {
      console.log(to,from,next)
        if(this.$route.path!='/home') //假设name为home的路由都使用`slide-left`,其它的路由都为`slider-right`
        {
            this.$router.isBack=true;
        }
      let isBack = this.$router.isBack
      if (isBack) {
        this.transitionName = 'slide-right'
      } else {
        this.transitionName = 'slide-left'
      }
      this.$router.isBack = false
      next()
    },    
    // watch: {
    //   $route(to, from) {
    //     // 切换动画
    //     let isBack = this.$router.isBack // 监听路由变化时的状态为前进还是后退
    //     console.log(isBack)
    //     console.log(to)
    //     console.log(from)
    //     if (isBack) {
    //       this.transitionName = 'slide-left'
    //     } else {
    //       this.transitionName = 'slide-right'
    //     }
    //     this.$router.isBack = false
    //   }
    // },
　  watch: {
    　　'$route' (to, from) {
        console.log(to)
        console.log(from)        
    　　　　let isBack = this.$router.isBack  //  监听路由变化时的状态为前进还是后退
    　　　　　　if(isBack) {
    　　　　　　　　this.transitionName = 'slide-right'
    　　　　　　} else {
    　　　　　　       this.transitionName = 'slide-left'
    　　　　　}
    　　    this.$router.isBack = false
    　　}
　  },    
    methods:{
        changeFade(){
            this.show = !this.show
        }
    }
}
</script>
<style lang="less" scoped>
    .review{
        width: 7.5rem;
        height: 500px;
        background: red;
        top:0px;
        left: 0px;
        position: relative;
        .sss{
            position: absolute;
            z-index: 999;
            width: 150px;  
            background: #fff;                     
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


