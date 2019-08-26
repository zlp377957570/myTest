<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
import {mapGetters, mapMutations} from 'vuex'
import { setTimeout } from 'timers';
export default {
  name: 'App',
  computed:{
    ...mapGetters(['detailHeaderUp'])
  },
　  watch: {
  　　'$route' (to, from,next) {
        console.log(to)
        console.log(from)        
        console.log(next)        
// 　　　　let isBack = this.$router.isBack  //  监听路由变化时的状态为前进还是后退
// 　　　　　　if(isBack) {
// 　　　　　　　　this.transitionName = 'slide-right'
// 　　　　　　} else {
// 　　　　　　       this.transitionName = 'slide-left'
// 　　　　　}
// 　　    this.$router.isBack = false
            // console.log(this.$store.getters.detailHeaderUp)
        // if(to.name!=='review'){
        //   setTimeout(()=>{
        //     this.$store.commit('chDetailHeaderUp',false)
        //   },500)
        // }else{
        //   setTimeout(()=>{
        //     this.$store.commit('chDetailHeaderUp',true)
        //   },500)
        // }
        // if(to.name==='review'){
        //   setTimeout(()=>{
        //     this.$store.commit('chDetailHeaderUp',true)
        //   },500)
        // }        
  　　}
　  },   
  mounted(){
    // window.onclick = function(){
    //   // console.log()
    // }
  }   
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  /* margin-top: 60px; */
  position: relative;
  top:0px;
  left: 0px;
  width: 100%;
  height: 100%;
  margin: 0 auto;
  overflow-y: scroll;
  padding: 0;
  user-select: none;
}
.van-dialog__message {
   user-select: none; 
}
</style>
