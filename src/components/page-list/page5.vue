<template>
    <div class="pages">
        <carousel :images="srcList" :keys="5"></carousel>
        <div>{{indexs}}</div>        
    </div>
</template>
<script>
import carousel from './carousel.vue'
export default {
    name:'page5',
    props:['indexs'],    
    data(){
        return{
            srcList: [
                {src: 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f5dae39b2f5b4e050d1675e6839fa6c6.jpg?thumb=1&w=720&h=360'},
                {src: 'https://i8.mifile.cn/v1/a1/2153db2e-d93d-96d0-8ac8-4ceb4a6f53d2.webp'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b25e6db92d1d79b2aefedf2a497de37c.jpg?thumb=1&w=720&h=360'}
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
        width: 375px;
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


