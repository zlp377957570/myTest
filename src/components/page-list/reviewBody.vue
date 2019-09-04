<template>
    <div class="reviewBody">
        <div class="block">
            <div class="info">
                <span class="icon">
                    <img :src="reviewBody.reviewOnly && reviewBody.reviewOnly.d_review_icon" alt="">
                </span>
                <span class="name">
                    <p>{{reviewBody.reviewOnly.d_review_name}}</p>
                    <span>{{reviewBody.reviewOnly.d_review_time}}</span>
                </span>
                <span class="zan">
                    <img src="@/assets/image/icon/超赞.png" alt="">超爱
                </span>
            </div>
            <div class="text">
                {{reviewBody.reviewOnly.d_review_text | lineFeed}}
            </div>
            <div class="imgList" :style="reviewBody.imgListAll && reviewBody.imgListAll.length>4?'width:100%':'width:80%'">
                <img @click="lookMaxPic(reviewBody.imgListAll)" :style="reviewBody.imgListAll && reviewBody.imgListAll.length<2?'width:auto;height:156px;margin:0 auto 10px;':''" v-for="(img,i) in reviewBody.imgListAll" :key="i" :src="img" alt="">
            </div>
            <div class="reply">
                <div class="itemReply" v-for="(rep,re) in reviewBody.replyList" :key="re">
                    <img :src="rep.src" alt="">
                    <i>{{rep.name}}</i>
                    {{rep.val}}
                </div>
            </div>
        </div>  
        <van-image-preview
        :startPosition="0"
        :showIndex="false"
        :showIndicators="true"
        v-model="show"
        :images="images"
        @change="onChange"
        >
        <template v-slot:index>第{{ index }}页</template>
        </van-image-preview>              
    </div>
</template>

<script>
import ls from '../../assets/js/ls.js'
import { ImagePreview } from 'vant';
import { setTimeout } from 'timers';
export default {
    name:'reviewBody',
    props:['reviewVal'],
    data(){
        return{
            show:false,
            reviewBody:'',
            index: 0,
            images: [
            ]            
        }
    },
　　filters: {
        lineFeed(value) {
            let str = value.replace(/<br>/g," \r\n ")
            return str
　　　　}
　　},     
    created(){
        if(this.reviewVal){
            ls.setItem('reviewItem',this.reviewVal)
            this.reviewBody = ls.getItem('reviewItem')
        }

    },
    mounted(){

    },
    methods:{
        onChange(index) {
            this.index = index;
        },
        lookMaxPic(imgList){
            this.images = imgList
            this.show = !this.show
        }     
    }
}
</script>

<style lang="less" scoped>
    .reviewBody{
        position: relative;
        top:50px;
        font-size: .25rem;
        .block{
            text-align: left;
            background: #fff;
            padding: 20px 0;
            span{
                line-height: 20px;
            }
            .info{
                padding: 0 20px;                
                display: flex;
                width: 100%;
                justify-content: space-between;
                text-align: left;
                color: rgba(0,0,0,.54);
                margin-bottom: 5px;
                .icon{
                    img{
                        display: block;
                        width: 42px;
                        height: 42px;                            
                        border-radius: 50%;
                        margin-top: -5px;
                    }
                }
                .name{
                    margin-left: 12px;
                    width: 80%;
                    p{
                        color: rgba(0,0,0,.87);
                    }
                    span{
                        display: block;
                        font-size: .24rem;
                        margin-top: -5px;
                    }
                }
                .zan{
                    display: inline-flex;
                    align-items: center;                      
                    text-align: right;
                    white-space: nowrap;
                    color: #f56600;
                    font-size: .23rem;
                    img{
                        margin-right: 3px;
                        margin-top: -2px;
                        width: 20px;
                        height: 20px;     
                    }
           
               
                }
            }
            .text{
                padding: 0px 20px;
                margin-top: -10px;
                line-height: 18px;
                // white-space: pre-wrap;
                white-space:pre-line;             
            }
            .imgList{
                padding: 5px 20px 0px;
                display: flex;
                justify-content: flex-start;
                width: 80%;
                flex-wrap: wrap;
                img{
                    margin: 0px 5px 10px 0;
                    display: inline-block;
                    width: 85px;
                    height: 85px;                                                
                }
            }
            .reply{
                margin: 0 15px;
                font-size: .23rem;
                overflow: hidden;
                text-overflow: ellipsis;                    
                background: #f2f2f2;
                line-height: 20px;
                padding: 10px 8px;
                i{
                    color: #f56600;
                }
                .itemReply{
                    padding: 2px 0px;     
                    img{
                        display: inline-block;
                        border-radius: 10px;
                        vertical-align: top;
                        margin-right: 7px;
                        width: 17px;
                        height: 17px;
                    }       
                }
            }
        }       
              
    }
</style>


