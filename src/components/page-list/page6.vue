<template>
    <div class="pages">
        <carousel :images="srcList" :keys="6"></carousel>
        <div>{{indexs}}</div>        
    </div>
</template>
<script>
import carousel from './carousel.vue'
export default {
    name:'page6',
    props:['indexs'],    
    data(){
        return{
            srcList: [
                {src: 'http://i8.mifile.cn/v1/a1/a327b9f5-b06c-4568-7974-42282e7a9131.webp'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/99268d31d01c0caf3c7a4eed880571d5.jpg?thumb=1&w=720&h=360'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/74017c12d09ca8c6e4447ed48050591d.jpg?thumb=1&w=720&h=360'}
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


