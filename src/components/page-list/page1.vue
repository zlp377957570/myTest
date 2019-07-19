<template>
    <div class="pages">
        <carousel :images="srcList" :keys="1"></carousel>
        <div>{{indexs}}</div>        
    </div>
</template>
<script>
import carousel from './carousel.vue'
export default {
    name:'page1',
    props:['indexs'],    
    data(){
        return{
            srcList: [
                {src: 'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c352beae76d56e4a98c48c8782a497b2.jpg?thumb=1&w=720&h=360'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f08d593e99c34980480f9e2d395c80b4.jpg?thumb=1&w=720&h=360'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/228af4cc5b23b83e5e5616501e000ee4.jpg?thumb=1&w=720&h=360'}
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


