<template>
    <div class="product_detail">  
        <div class="ceiling">
            <a class="left" @click="routerGo"><van-icon name="arrow-left" /></a>
            <a class="right"><van-icon name="ellipsis" /></a>
        </div>
        <div class="swipe_top">
            <van-swipe>
                <van-swipe-item><img src="https://i8.mifile.cn/v1/a1/a9dbff6a-8844-6641-6979-bf220da15cb7.webp" alt=""></van-swipe-item>
                <van-swipe-item><img src="https://img.yzcdn.cn/vant/apple-2.jpg" alt=""></van-swipe-item>
                <van-swipe-item><img src="https://img.yzcdn.cn/vant/apple-1.jpg" alt=""></van-swipe-item>
                <van-swipe-item><img src="https://img.yzcdn.cn/vant/apple-2.jpg" alt=""></van-swipe-item>
            </van-swipe>               
        </div>
        <div class="details_info">
            <div class="detail_seckill">
                <span class="seckill_price">
                    秒杀价<i>2999</i>
                </span>
                <span class="seckill_time">
                    距结束 <i>07:46:50</i>
                </span>
            </div>
            <div class="detail_name">
                小米MIX3
            </div>
            <div class="detail_title">
                <i>「8GB+128GB美拍套装，立省1158元」</i><span>DxOMark拍照108分 / 磁动力滑盖全面屏 / 四曲面陶瓷机身 / 骁龙845旗舰处理器 / 包装盒内附赠10W无线充电器</span>
            </div>
            <div class="detail_price">
                <span><i>￥</i>2999</span>
                <s>3599</s>
            </div>
        </div>
        <div class="detail_icon_list">
            <div v-for="(val,v) in 10" :key="v">
                <img src="https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png" alt="">
                <p>CPU</p>
                <span>骁龙845八核</span>
            </div>
        </div>
        <div class="detail_promotion detail_options">
            <div class="name">促销</div>
            <div class="content">
                <div>
                    <i class="zp">赠品</i><span>送米家照片打印机相纸（40张）</span>
                </div>
                <div>
                    <i class="zp">赠品</i><span>送米家照片打印机相纸（40张）</span>
                </div>                
            </div>
            <div class="btn"><i></i></div>
        </div>
        <div class="detail_options detail_option_item">
            <div class="name">已选</div>
            <div class="content">
                <div>
                    <span>小米MIX 3 全网通版 8GB+128GB 黑色<i> x 1</i></span>
                </div>            
            </div>
            <div class="btn"><i></i></div>
        </div>
        <div class="detail_options detail_option_item">
            <div class="name">送至</div>
            <div class="content">
                <div>
                    <span>北京市 东城区</span><i class="zt">有现货</i>
                </div>            
            </div>
            <div class="btn"><i></i></div>
        </div>    
        <div class="detail_options detail_option_item">
            <div class="service">    
                <span><i>✔</i>小米自营</span>     
                <span><i>✔</i>小米发货</span>     
                <span><i>✔</i>7天无理由退货</span>     
            </div>
            <div class="btn"><i></i></div>
        </div> 
        <div class="detail_recommend">
            <div class="title">相关推荐</div>
            <div class="content">
                <div class="inline_block" v-for="(block,b) in 10" :key="b">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/23f42bfa929531ac7da9a4ca6dbe7c20.jpg" alt="">
                    <p>Redmi充电宝</p>
                    <span><i>¥</i>59</span>
                </div>
            </div>
        </div>            
    </div>
</template>
<script>
import ls from '../../assets/js/ls.js'
import { Button,Dialog,Row, Col,Icon,Tab, Tabs ,Tabbar, TabbarItem,Lazyload,PullRefresh,CountDown,Swipe, SwipeItem } from 'vant';
export default {
    name:'product_detail',
    props:[],    
    data(){
        return{
      images: [
        'https://img.yzcdn.cn/vant/apple-1.jpg',
        'https://img.yzcdn.cn/vant/apple-2.jpg'
      ]
        }
    },
    components:{

    },
    beforeRouteUpdate (to, from, next) {
        // just use `this`
        this.name = to.params.name
        console.log(this.name)
        next()
    },
    created(){
        console.log(ls.getItem('item'))
        console.log(ls.getItem('routerName'))        
    },
    mounted(){
        // window.addEventListener('resize',this.setRemUnits)
    },
    methods:{
        // setRemUnits(){
        //     var deviceWidth = document.documentElement.clientWidth;
        //         console.log(deviceWidth)
        // },
        routerGo(){
                this.$router.push({name:'page0',replace:true})
        },
        
    }
}
</script>
<style lang="less" scoped>
    .product_detail{
        width: 7.5rem;
        margin: 0 auto;
        height: 2000px;
        overflow-x: hidden;
        font-size: .24rem;                
        top:0px;
        left: 0px;
        .ceiling{
            position: fixed;
            z-index: 1000;
            top:0px;
            width: 100%;
            display: flex;
            padding: 10px 10px;
            justify-content: space-between;
            a{
                i{
                    width: 32px;
                    height: 31px;
                    overflow: hidden;
                    background: rgba(0, 0, 0, .65);
                    opacity: .9;
                    font-size: .36rem;
                    font-weight: 100;
                    padding-top: 6px;
                    color: #fff;
                    border-radius: 50%;
                }
            }
            .right{
                i{
                    padding-top: 4px;                  
                    font-size: .48rem;        
                }
            }
        }
        .swipe_top{
            width: 100%;
            img{
                display: block;
                width: 100%;
                height: 412px;
            }                        
        }
        .details_info{
            width: 100%;
            font-size: .32rem;
            text-align: left;
            .detail_seckill{
                color: #fff;
                background: #f56600;
                display: flex;
                justify-content: space-between;
                padding: 15px 15px;
                .seckill_price{
                    i:before{
                        content: '￥';
                        font-size: .22rem;      
                        vertical-align: 2px;
                    }
                }
                .seckill_time{
                    font-size: .28rem;      
                    i{
                        font-size: .24rem;                              
                    }                   
                }
            }
            .detail_name{
                padding-top: 15px;
                padding-left: 15px;
                font-size: .44rem;     
                font-weight: 100;
                color:  rgba(0,0,0,.87);                
            }
            .detail_title{
                color:  rgba(0,0,0,.54);
                padding: 5px 16px;
                font-size: .25rem;  
                i{
                    color: #f56600;
                }
            }
            .detail_price{
               span{
                    padding-left: 15px;
                    padding-right: 5px;
                    color: #f56600; 
                    font-size: .52rem;  
                    i{
                        font-size: .40rem;  
                    }
               } 
               s{
                    color:  rgba(0,0,0,.54);    
                    font-size: .26rem;  
                    vertical-align: -2px;
               }
               s:before{
                   content: 'Y'
               }
            }
        }
        .detail_icon_list{
            font-size: .24rem;
            width: 7.5rem;
            padding: 10px 0;
            overflow-x: auto;
            white-space: nowrap;
            div{
                width: 87.5px;
                overflow: hidden;
                display: inline-block;
                text-align: center;
                color: #3c3c3c;
                img{
                    display: block;
                    margin: 3px auto;
                    width: 20px;
                }
                p{

                }
                span{
                    color: #676767;      
                }
            }
            div:not(:first-child){
                border-left: 1px solid #e0e0e0;
            }
        }
        .detail_options{
            width: 90%;
            display: flex;
            justify-content: space-between;
            background: #fafafa;
            margin: 0 auto;
            line-height: 25px;
            color: rgba(0,0,0,.87);
            border: 1px solid #eee;
            border-radius: 5px;
            padding: 6px 10px;
            font-size: .24rem;            
            .name{
                padding-left:10px;
                color: rgba(0,0,0,.54);  
            }
            .content{
                min-width: 75%;
                text-align: left;
                div{
                    line-height: 25px;
                    text-align: left;
                    .zp{
                        margin-right: 5px;
                        font-size: .24rem;
                        color: #f56600;
                        padding: 0 1px;
                        border: 1px solid #f56600;
                    }
                    .zt{
                        color: #f56600;        
                        margin-left: 10px;
                    }
                }         
            }
            .service{
                span{
                    vertical-align: middle;
                    font-size: .20rem;                       
                    color: rgba(0,0,0,.54);
                    padding-left: 10px;
                    i{
                        display: inline-block;
                        width: 10px;
                        line-height: 8px;    
                        font-size: .10rem;    
                        border: 1px solid #f56600;
                        color:#f56600;
                        margin-right: 5px;
                        border-radius: 50%;               
                    }
                }
            }            
            .btn{
                display: inline-flex;
                align-items: center;
                i{
                    display: inline-block;
                    width: 10px;
                    height: 10px;
                    transform: rotate(135deg);
                    border-left: 1px solid #bbb;
                    border-top: 1px solid #bbb;                   
                }
            }
        }
        .detail_promotion{
            margin-bottom: 10px;
        }
        .detail_option_item:not(:first-child){
            // border-bottom:none;        
            border-top:none;        
        }
        .detail_recommend{
            width: 90%;    
            margin: 0 auto;   
            margin-top: 35px;
            padding: 10px 0px 0px;                                     
            border-radius: 8px;
            background: #fafafa;     
            border: 1px solid #eee;                    
            .title{
                padding: 0px 10px 10px;   
                // line-height: 20px;
                color: #f56600;
                border-bottom: 1px solid #eee; 
            }
            .content{
                padding: 10px 10px;    
                white-space: nowrap;
                overflow-x: auto;
                .inline_block{
                    width: 80px;
                    height: 112px;        
                    display: inline-block;
                    img{
                        border-radius: 8px;                                
                        display: block;
                        margin: 0 auto 10px;
                        width: 72px;
                        height: 72px;
                    }
                    p{
                        color: #3c3c3c;
                    }
                    span{
                        color:#f56600;
                    }
                }
            }
        }               
    }
</style>


