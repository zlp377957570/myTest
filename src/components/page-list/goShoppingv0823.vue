<template>
    <div class="goShopping">
        <detailHead :title="'购物车'"></detailHead>
        <div class="shopping">
            <div class="shopp">
                <div class="content" v-for="(spb,sp) in sl" :key="sp">
                    <div class="only">
                        <div class="select">
                            <van-icon name="checked" />
                        </div>
                        <div class="image">
                            <img :src="spb.si_only.d_style_src" alt="">
                        </div>
                        <div class="info">
                            <div class="title"><span>{{spb.si_only.p_name+' '+spb.si_only.d_style_version}}</span></div>
                            <div class="subTitle"><span>{{spb.si_only.d_style_color+'&nbsp;&nbsp;'+spb.si_only.d_style_disk}}</span></div>
                            <div class="price"><span>{{spb.si_only.d_style_price}}</span><s>{{spb.si_only.d_style_original_price}}</s></div>
                        </div>
                        <div class="addCount">
                            <div class="compute">
                                <span @click="minus" :class="[count<2?'disabled':'']">－</span>
                                <span class="val" :v-model="count">{{count}}</span>
                                <span @click="add" :class="[count<3&&count>=1?'':'disabled']">＋</span>
                            </div>
                        </div>
                    </div>  
                    <div class="subjoin">
                        <div class="addBuy"></div>
                        <div class="server" v-for="(ser,s) in spb.si_server" :key="'ser-'+ s">
                            <div class="title">
                                服务
                            </div>
                            <div class="name">
                                {{ser.name}}
                            </div>
                            <div class="price">
                                <span>{{ser.price}}</span>
                            </div>
                            <div class="setSelect" @click="lookServerShow(sp)">
                                选购
                            </div>
                        </div>
                        <div class="serverChecked"></div>
                        <div class="gift" v-for="(gif,gi) in spb.si_gift" :key="gi">
                            <div class="itemGift" v-for="(itmgif,ig) in gif.values" :key="ig">
                                <div class="src">
                                    <img :src="itmgif.src" alt="">
                                </div>
                                <div class="title">
                                    [赠品]{{itmgif.name+'&nbsp;&nbsp; x'}}{{itmgif.count}}
                                </div>
                                <div class="setSelect" v-show="gif.values.length>1">
                                    修改
                                </div>                                
                            </div>
                        </div>
                    </div>
                    <div class="showPageList">
                        <van-popup
                        v-model="serverListShow"
                        position="bottom"
                        :style="{ height: '60%' }"
                        >       
                            <div class="iconList showPopupPage">
                                <div class="close" @click="closeShowPage"><van-icon name="cross"/></div>
                                <div class="header">
                                    <span>购买服务</span>
                                </div>    
                                <div class="content">
                                    <div class="accident_protection" v-for="(pis,pi) in spb.si_server" :key="pi">
                                        <div class="title">
                                            <span class="name" @click="zengzhi=!zengzhi,zengzhiIndex=pis.a_srcIndex">{{pis.name}}<van-icon name="question-o" /></span>
                                            <span v-for="(vss,vi) in pis.values" :key="vi" class="val" v-show="pis.isSelect" v-if="vss.checked">{{vss.text}}</span>
                                        </div>
                                        <div v-for="(vss,vi) in pis.values" :key="vi" :class="['block',vss.checked?'selectActive':'']" @click="selectServer(sp,pis.isSelect,pi,vss.checked,vi)">
                                            <span class="name">{{vss.name}}</span>
                                            <span class="val">{{vss.price}}元</span>
                                        </div>
                                        <div class="info" v-show="pis.isSelect">
                                            <span class="affirm"><van-icon name="checked" />我已阅读</span>
                                            <span class="clause" @click="zengzhi=!zengzhi,zengzhiIndex=pis.b_srcIndex">服务条款 | </span>
                                            <span class="issue" @click="zengzhi=!zengzhi,zengzhiIndex=pis.c_srcIndex">常见问题</span>
                                        </div>                  
                                    </div>
                                </div>
                                <div class="footer">
                                    <div class="selects">
                                        <span v-if="serverCount>0" class="selected">已选{{serverCount}}种服务</span>
                                        <span v-if="serverCount==0" class="select">请选择服务</span>
                                    </div>
                                    <div class="affirm" @click="serverAffirm">确认</div>                    
                                </div>
                            </div>     
                        </van-popup>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import ls from '../../assets/js/ls.js'
import { Button,Dialog,Row, Col,Icon,Tab, Tabs ,Tabbar, TabbarItem,Lazyload,PullRefresh,CountDown,Swipe, SwipeItem, Popup,ActionSheet,ImagePreview,Toast } from 'vant';
import detailHead from './detailHead.vue'
export default {
    name:'goShopping',
    data(){
        return{
            serverListShow:false,
            zengzhiColor:'color:#ddd',
            zengzhi:false,    
            zengzhiIndex:0,
            zengzhiImgList:[
                "../../static/image/qita/意外保护.png",
                "../../static/image/qita/服务条款.png",
                "../../static/image/qita/常见问题.png",
                "../../static/image/qita/延迟保修.png",
                "../../static/image/qita/更多参数.png"
            ],         
            serverCount:0,  
            serverCopy:{},  
            count:1,
            sl:{}
        }
    },
    components:{
        detailHead
    }, 
    created(){
        this.init()
    },
    mounted(){
    },
    methods:{
        serverAffirm(){//确认选择服务

        },
        selectServer(sp,a,ai,b,bi){//选择服务

            // this.serverCopy = this.sl
            console.log(this.serverCopy)
            console.log(this.serverCopy===this.sl)
            let adom = this.serverCopy[sp].si_server[ai].values
            let ale = adom.length
            let s = 0
            if(ale && ale>1){
                for(let i in adom){
                    this.serverCopy[sp].si_server[ai].isSelect = true
                    if(this.serverCopy[sp].si_server[ai].isSelect){
                            adom[i].checked = false
                            this.serverCopy[sp].si_server[ai].values[bi].checked = !b
                    }else{
                        this.serverCopy[sp].si_server[ai].isSelect = !a 
                    }
                    if(adom[i].checked === true){
                        s++
                    }
                    if(s===0){
                        this.serverCopy[sp].si_server[ai].isSelect = false
                    }
                }                    
            }else{
                this.serverCopy[sp].si_server[ai].isSelect = !a                   
                this.serverCopy[sp].si_server[ai].values[bi].checked = !b                    
            }

            if(this.serverCopy[sp].si_server[0].isSelect && this.serverCopy[sp].si_server[1].isSelect){
                this.serverCount = 2
            }else if(this.serverCopy[sp].si_server[0].isSelect){
                this.serverCount = 1
            }else if(this.serverCopy[sp].si_server[1].isSelect){
                this.serverCount = 1
            }else{
                this.serverCount = 0
            }
        },        
        // selectServer(sp,a,ai,b,bi){//选择服务
        //     let adom = this.serverCopy[sp].si_server[ai].values
        //     let ale = adom.length
        //     let s = 0
        //     if(ale && ale>1){
        //         for(let i in adom){
        //             this.serverCopy[sp].si_server[ai].isSelect = true
        //             if(this.serverCopy[sp].si_server[ai].isSelect){
        //                     adom[i].checked = false
        //                     this.serverCopy[sp].si_server[ai].values[bi].checked = !b
        //             }else{
        //                 this.serverCopy[sp].si_server[ai].isSelect = !a 
        //             }
        //             if(adom[i].checked === true){
        //                 s++
        //             }
        //             if(s===0){
        //                 this.serverCopy[sp].si_server[ai].isSelect = false
        //             }
        //         }                    
        //     }else{
        //         this.serverCopy[sp].si_server[ai].isSelect = !a                   
        //         this.serverCopy[sp].si_server[ai].values[bi].checked = !b                    
        //     }

        //     if(this.serverCopy[sp].si_server[0].isSelect && this.serverCopy[sp].si_server[1].isSelect){
        //         this.serverCount = 2
        //     }else if(this.serverCopy[sp].si_server[0].isSelect){
        //         this.serverCount = 1
        //     }else if(this.serverCopy[sp].si_server[1].isSelect){
        //         this.serverCount = 1
        //     }else{
        //         this.serverCount = 0
        //     }
        // },         
        lookServerShow(sp){//打开服务面板
            this.serverListShow = !this.serverListShow   
            this.serverCopy = JSON.parse(JSON.stringify(this.sl))
            console.log(sp)
        },
        closeShowPage(){//关闭下拉页面
            this.serverListShow = false
        },        
        minus(){//购买数量--
            this.count>1?this.count--:1
        },
        add(){//购买数量++
            this.count++
        },        
        init(){
            let url = this.HOST + '/detail/goShopping.php'
            this.$axios.post(url,{}).then(response=> {
                console.log(response.data)
                this.sl = response.data.shoppingList          
                console.log(this.sl)             
            }).catch(error=>{

            })              
        }
        
    }
}
</script>

<style lang="less" scoped>
    .goShopping{
        width:7.5rem;
        .shopping{
            position: relative;
            top:50px;
            width: 100%;
            border-top: 1px solid #aaa;
            font-size: .25rem;
            .shopp{
                .content{
                    .only{
                        display: flex;
                        padding: 7px 7px;
                        align-items: center;
                        position: relative;
                        .select{
                            padding: 25px 7px;
                            i::before{
                                font-size: .42rem;
                                color: #f56600;
                            }
                        }
                        .image{
                            padding: 7px 7px;
                            img{
                                display: block;
                                width: 72px;
                                height: 72px;
                                border:1px solid #ccc;
                                border-radius: 3px;
                            }
                        }
                        .info{
                            text-align: left;
                            padding: 0px 7px;
                            line-height: 18px;
                            .title{
                               color: #333;
                               font-size: .27rem;
                            }
                            .subTitle{
                                font-size: .18rem;                                
                                color: #aaa;
                            }
                            .price{
                                span{
                                    color: #f56600;
                                    font-size: .3rem;
                                }
                                span::before{
                                    content: '\A5';
                                    font-size: .1rem;
                                    vertical-align: 3px;
                                }
                                s{
                                    padding-left: 10px;
                                    color: #888;
                                    font-size: .1rem;
                                }
                                s::before{
                                    content: '\A5';
                                    // vertical-align: 2px;
                                    font-size: .1rem;
                                }
                            }
                        }
                        .addCount{    
                                position: absolute;
                                right: 20px;
                                bottom: 20px;        
                            .compute{
                                overflow: hidden;
                                display: flex;
                                span{
                                    text-align: center;
                                    font-size: .42rem;
                                    font-weight: lighter;
                                    color: #676767;
                                    width: 26px;
                                    line-height: 24px;
                                    vertical-align: middle;
                                    border: 1px solid #f0f0f0;
                                }
                                .val{
                                    font-size: .33rem;      
                                    border-left: none;
                                    border-right: none;
                                    background: #fff;
                                    color: rgba(0,0,0,1);
                                }
                                .disabled{
                                    color: #ccc;
                                }
                            }
                        }
                    }
                    .subjoin{
                        .addBuy{

                        }
                        .server{
                            position: relative;
                            display: flex;
                            align-items: center;
                            padding: 10px 20px 10px 35px;     
                            background: #fafafa;                 
                            .title{
                                padding: 0 15px;
                            }
                            .name{
                                color: #777;
                            }
                            .price{
                                span{
                                    padding-left: 10px;
                                    color: #f56600;
                                }
                                span:before{
                                    content:'\A5';
                                    font-size: .1rem;
                                    vertical-align: 1px;
                                }
                            }
                            .setSelect{
                                position: absolute;
                                right: 15px;
                                color: #777;
                            }                                
                        }
                        .serverChecked{

                        }
                        .gift{
                            .itemGift{
                                position: relative;
                                display: flex;
                                align-items: center;
                                padding: 10px 20px 10px 35px;
                                background: #fafafa;

                                .src{
                                    padding: 0 15px;
                                    img{
                                        border-radius: 6px;
                                        border: 1px solid #ccc;
                                        width: 45px;
                                        height: 45px;
                                        display: block
                                    }
                                }
                                .title{
                                    font-size: .22rem;
                                }
                                .setSelect{
                                    position: absolute;
                                    right: 15px;
                                    color: #777;
                                }                     
                            }
                        }
                    }
                    .showPopupPage{
                        overflow: hidden;
                        .selectActive{
                            border-color: #f566009d!important;
                            color:#f56600;
                        }                         
                        .close{
                            padding: 10px 15px 0px 0px;   
                            position: fixed;
                            right: 0;
                            z-index: 100;
                            font-size: .44rem;    
                            color: #aaa;
                            i{
                                vertical-align: bottom;
                            } 
                        }               
                        .header{
                            position: fixed;
                            background: #fff;                             
                            width: 100%;
                            line-height: 55px;
                            padding: 0px 20px;    
                            span{
                                width: 100%;
                                display: block;
                                border-bottom: 1px solid #f0f0f0;
                                font-size: .36rem;
                            }
                        }
                        .content{
                            margin-top: 55px;
                            margin-bottom: 35px;
                            padding: 0px 20px;                
                            overflow-y: scroll;
                            text-align: left;
                            font-size: .29rem;
                            .accident_protection{
                                font-size: .25rem;
                                display: flex;
                                padding: 0px 0 10px;
                                justify-content: space-between;
                                flex-wrap: wrap;
                                text-align: left;     
                                border-top:1px solid #f8f8f8;           
                                .title{
                                    padding: 15px 0 15px;
                                    width: 100%;
                                    .name{
                                        i::before{
                                            font-size: .32rem;
                                            display: inline-block;
                                            margin: 0 5px; 
                                            vertical-align: middle;                         
                                        }
                                    }
                                    .val{
                                        color: rgba(0,0,0,.54);
                                    }
                                }
                                .block{
                                    width: 162px;
                                    display: inline-block;
                                    border: 1px solid #f0f0f0;
                                    display: flex;
                                    justify-content: space-between;
                                    padding: 9.5px 10px;
                                    margin-bottom: 10px;
                                    .name{
                                        text-align: left;
                                    }
                                    .val{
                                        text-align: right;

                                    }
                                }
                                .info{
                                    padding: 10px 0; 
                                    .affirm{
                                        i::before{
                                            font-size: .32rem;
                                            display: inline-block;
                                            margin: -3px 5px 0; 
                                            color:#f56600;
                                            vertical-align: middle;                       
                                        }
                                    } 
                                    .clause{
                                        color:#f56600;
                                    }  
                                    .issue{
                                        color:#f56600;
                                    }   
                                }
                            }
                        }
                    }                
                }
                .footer{
                    width: 100%;
                    display: flex;
                    align-items: center;
                    position: fixed;
                    left: 0;
                    bottom: 0;
                    font-size: .29rem;
                    .selects{
                        border-top:1px solid #ccc;                        
                        width: 70%;
                        padding: 15px 0;
                        color: #555;
                    }
                    .affirm{
                        width: 30%;
                        padding: 15px 0;    
                        border-top:1px solid #999;                        
                        background: #f56600;
                        color: #fff;
                    }
                }
            }
        }
    }
</style>

