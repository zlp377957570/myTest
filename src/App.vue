<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App',
　  watch: {
    　　'$route' (to, from,next) {
        console.log(to)
        console.log(from)        
        console.log(next)        
    　　　　let isBack = this.$router.isBack  //  监听路由变化时的状态为前进还是后退
    　　　　　　if(isBack) {
    　　　　　　　　this.transitionName = 'slide-right'
    　　　　　　} else {
    　　　　　　       this.transitionName = 'slide-left'
    　　　　　}
    　　    this.$router.isBack = false
    　　}
　  },      
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
  width: 100%;
  height: 100%;
  margin: 0 auto;
  overflow-y: scroll;
  padding: 0;
}
</style>
