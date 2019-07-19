<template>
    <div class="pages">
        <!-- <carousel :images="srcList" :keys="3"></carousel> -->
        <!-- <div>{{indexs}}</div>         -->
        <!-- <img v-for="(img,i) in imageList" :key="i" v-lazy="img" > -->
        <!-- <div v-for="(img,i) in imageList" :key="i" v-lazy:background-image="img" /> -->
<van-pull-refresh v-model="isLoading" @refresh="onRefresh">
    <!-- <lazy-component> -->
        <img v-for="(img,i) in imgList" :key="i" v-lazy="img" >
    <!-- </lazy-component> -->
</van-pull-refresh>        

    </div>
</template>
<script>
import { Lazyload } from 'vant';
// import carousel from './carousel.vue'
export default {
    name:'page3',
    // props:['indexs'],    
    data(){
        return{
            isLoading: false,
            imageList: [
                // 'https://img.yzcdn.cn/vant/apple-1.jpg',
                // 'https://img.yzcdn.cn/vant/apple-2.jpg'
            ]
        }
    },
    components:{
        // carousel
    },
    computed:{
        imgList:function(){
            // this.imgList = []
            var src = './static/image/linshi/dianshi_'
            for(var i=0;i<17;i++){
                this.imageList.push(src+(i+1)+'.png')
            }
            console.log(this.imageList)
            return this.imageList
        }
    },
    methods:{
        onRefresh() {
        setTimeout(() => {
            this.$toast('刷新成功');
            this.isLoading = false;
        }, 500);
        }
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
        img{
            width: 100%;
            height: 500px;
            display: block;
            border: 5px solid #fff;
        }
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


