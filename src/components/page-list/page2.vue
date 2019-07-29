<template>
    <div class="pages">
        <carousel :images="srcList" :keys="2"></carousel>
        <div>{{indexs}}</div>        
    </div>
</template>
<script>
import carousel from './carousel.vue'
export default {
    name:'page2',
    props:['indexs'],    
    data(){
        return{
            srcList: [
                {src: 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/df2eda17418643cd7c375937b6e5016a.jpg?thumb=1&w=720&h=360'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/20bc031bc5ca94aece4564369330f60a.jpg?thumb=1&w=720&h=360'},
                {src: 'https://i8.mifile.cn/v1/a1/fe08cdfd-5a9c-0c44-ac75-924ea7494207.webp'}
            ], 
        }
    },
    components:{
        carousel
    },
    methods:{

    }
}
</script>
<style lang="less" scoped>
    .pages{
        width: 100%;
        height: 500px;
        // background: red;
        top:0px;
        left: 0px;
        position: relative;

        .aaa{
            top: 0;
            left: 37.5px;
            position: absolute;
            width: 300px;
            height:300px;
            background: green;        
        }
    }
</style>


