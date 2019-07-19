<template>
    <div class="pages">
        <carousel :images="srcList" :keys="0"></carousel>
        <div>{{indexs}}</div>
        <div class="times">
            <van-count-down
            :time="time"
            format="DD 天 HH 时 mm 分 ss 秒"
            />     
            <van-count-down :time="time" />       
        </div>
    </div>
</template>
<script>
import { CountDown } from 'vant';
import carousel from './carousel.vue'
export default {
    name:'page0',
    props:['indexs'],
    data(){
        return{
            time: 30 * 60 * 60 * 1000,
            srcList: [
                {src: 'http://chzflive.caihome.cn/web/o_1c7390v9q1al1rak17g2v3uhc438?x-oss-process=image/resize,m_fill,h_240,w_320'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c352beae76d56e4a98c48c8782a497b2.jpg?thumb=1&w=720&h=360'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ccda14b5cc9070911063b07affc3e38c.jpg?thumb=1&w=720&h=360'}
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
        .times{
            width: 375px;
            height:200px;
            // background: red;
            color: #000;
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


