<template>
    <div class="pages" ref="pages" @scroll="paperScroll($event)">
        <carousel :images="srcList" :keys="0"></carousel>
        <div class="contents">
            <!-- <div v-for="(line,index) in list" :key="index" :class="line.p_line"></div>
            <div v-for="(item,index) in list" :key="index" :class="`items`+' '+item.style_type" >
                <a ref="val" href="#" v-for="(val,v) in item.values" :key="v">
                    <img :src="val.p_src+val.p_name+val.img_type" alt="">
                </a>
            </div> -->
            <div class="block" ref="block" v-for="(item,is) in list" :key="is">
                <div :class="`line`+' '+item.p_line"></div>
                <div :class="`items`+' '+item.style_type" >
                    <a ref="val" href="#" v-for="(val,vs) in item.values" :key="vs">
                        <img ref="imgs" isLoad="false" :style="val.img_style" :data-src="val.p_src+val.p_name+val.img_type" 
                        src="http://www.zlpones.com/imgs/mi/img/默认背景.png" alt="">
                        <div class="info" v-show="val.p_title!==''">
                            <h3>{{val.p_name}}</h3>
                            <span>{{val.p_title}}</span>
                            <p><span>¥{{val.p_price}}</span><s v-show="val.p_originalPrice!='0'">¥{{val.p_originalPrice}}</s></p>
                            <div>立即购买</div>
                        </div>
                    </a>
                </div>                         
            </div>        
        </div>
    </div>
</template>
<script>
import { CountDown } from 'vant';
import carousel from './carousel.vue'
import { setTimeout } from 'timers';
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
            count:0,
            isLoadList:['true'],
            list:[] 
        }
    },
    components:{
        carousel
    },
    created(){
        this.$axios.get(this.HOST+'./getMaindata.php', {})
        .then(response=> {
            console.log(response.data.products)
            console.log(response.data)
            let self = this
            self.list = response.data.products;
            self.$nextTick(() => {
                let _this = this
                let e = _this.$refs.pages
                console.log(e)
                _this.paperScroll(e)
            })       
        })
        .catch(error=> {
        });       
        // window.addEventListener('scroll', this.onScrollHeight)
    },   
    mounted(){
        // setTimeout(() => {
        //     let _this = this
        //     let e = _this.$refs.pages
        //     console.log(e)
        //     _this.paperScroll(e)
        // },500)        
        // window.addEventListener('scroll', this.onScrollHeight,true)    
    }, 
    destroyed() { //页面离开后销毁，防止切换路由后上一个页面监听scroll滚动事件会在新页面报错问题
        // window.removeEventListener('scroll', this.onScrollHeight)
    },
    methods:{
        isLoad(e){
            // setTimeout(()=>{
            // let blocks = this.$refs.block
            // for(let b in blocks){
            //     console.log(blocks[b])
            //     let offsetTop = blocks[b].offsetTop
            //     console.log(offsetTop)
            // }
            console.log(e.target)
            // },500)
        },
        paperScroll(e){
            e.target!==undefined?e.stopPropagation():''
            // e.stopPropagation()
            let self = this
            console.log(self.isLoadList)
            if(self.isLoadList.length>0){
                let $this = e.srcElement || e
                let scollTop = $this.scrollTop
                let offsetHeight = $this.offsetHeight
                let scrollHeight = $this.scrollHeight
                let imgs = self.$refs.imgs
                for(let m in imgs){
                    let offsetTop = imgs[m].offsetTop
                    if(offsetTop<=scollTop+offsetHeight){
                        let isload = imgs[m].getAttribute('isLoad')
                        let src = imgs[m].getAttribute('data-src')
                        self.isLoadList = []
                        if(isload==='false'){
                            setTimeout(()=>{
                                imgs[m].setAttribute('src',src)
                                imgs[m].setAttribute('isLoad',"true")
                                self.isLoadList.push('true')
                            },500)
                        }
                        console.log(self.isLoadList)
                    }
                }                  
            }      
        },      
        onScrollHeight(){
            // var scr = this.$refs.block
            // for(var i=0;i<scr.length;i++){
            //              console.log(scr[i])   
            // }
            // var top = this.$refs.page0.$el.scrollTop
                    // console.log(document.body.scrollTop)   
            // let scrollTop =window.clientX || window.scrollHeight || window.pageY || window.pageYOffset || document.body.scrollTop || document.body.scrollHeight;

        } 
    }
}
</script>
<style lang="less" scoped>
    .pages{
        width: 7.5rem;
        // position: relative;
        overflow-x: hidden;
        // overflow-y: scroll;
        // -webkit-overflow-scrolling: touch;
        height: 100%;
        top:0px;
        left: 0px;
        // position: relative;
        .contents{
            width: 100%;
            margin: 0 auto;
            .block{
                width: 100%;
                // position: relative;                
                height:100%;
                // background: red;
                color: #000;
                .line{
                    width: 100%;
                    overflow: hidden;                    
                }
                .aaa{
                    height:0px;   
                    // background: red;                              
                }
                .bbb{
                    height:8.3px;   
                    background: rgb(245, 245, 245);                              
                }
                .ccc{
                    height:5px;   
                    background: #fff; 
                    // border-bottom: 2px solid red;                             
                }
                .items{
                    width: 100%;      
                    // position: relative;              
                    a{
                        width: 100%;  
                        float: left;                 
                        display: block;                        
                        img{
                            width: 100%;
                            height: 100%;                            
                            display: block;
                        }
                        .info{
                            font-size: .26rem;
                            line-height: 20px;
                            margin:8px 0;
                            color: rgba(0,0,0,.54);
                            h3{
                                color: #000;
                                font-weight: 100;
                            }
                            span:active{
                                color: #FF6B00;
                            }
                            p{
                                span{
                                    font-size: .32rem;
                                    color:red;
                                    padding: 0 5px;
                                }
                                s{
                                    font-size: .24rem;
                                }
                            }
                            div{
                                color:#fff;
                                font-size: .28rem;                                                             
                                width: 58%;
                                margin: 0 auto;
                                padding: 5px 0px;
                                border-radius: 5%;
                                background: #ea625b;
                            }
                            div:active{
                                background: rgb(243, 44, 37);     
                            }
                        }                                                      
                    }
                }
                .style_b{
                    display: flex;                       
                    a{
                        width: 20%;
                        // width: 75px;
                        height: 20%;
                    }
                }  
                .style_c{
                    a{
                        overflow: hidden;
                        width: 50%;                       
                    }
                    a:nth-child(1){
                        img{
                            margin-bottom: -3px;
                        }
                    }
                    a:nth-child(2){
                        img{
                            border-left: 2px solid #fff;                        
                            border-bottom: 2px solid #fff;                        
                        }                        
                    }     
                    a:nth-child(3){
                        img{
                            border-left: 2px solid #fff;                                
                        }                                   
                    }          
                }  
                .style_d{
                    display: flex;                       
                    a{
                        width: 100%;
                        height: 20%;
                    }
                } 
                .style_e{
                    display: flex;  
                    justify-content: space-between; 
                    border-left: 5px solid #fff;
                    border-right: 5px solid #fff;
                    a{
                        width: 49%;
                        height: 20%;
                    }
                }                                                                                
            }            
        }
    }
</style>


