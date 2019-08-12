<template>
    <div ref="detail" class="product_detail" @scroll="paperScroll2($event)">  
        <div v-show="scrollTop2>=300" class="ceiling2"><a href="javascript:void(0);" @click="ceiling2"><img src="@/assets/image/icon/吸顶.png" alt=""></a></div>               
        <div class="ceiling">
            <a class="left" @click="routerGo"><van-icon name="arrow-left" /></a>
            <a class="right"><van-icon name="ellipsis" /></a>
        </div>
        <div class="swipe_top">
            <van-swipe :autoplay="10000">
                <van-swipe-item v-for="(imgs,im) in inforList.imgsList" :key="im"><img :src="imgs" alt=""></van-swipe-item>
            </van-swipe>               
        </div>
        <div class="details_info">
            <div v-show="isSeckill" class="detail_seckill">
                <span class="seckill_price">
                    秒杀价<i>{{details.d_style_price}}</i>
                </span>
                <span class="seckill_time">
                    距结束 <i><van-count-down :time="time" @finish="overTime"/></i>
                </span>
            </div>
            <div class="detail_name">
               {{details.p_name}}
            </div>
            <div class="detail_title">
                <i>{{details.d_style_high_title}}</i><span>{{details.d_style_iconList_nameList}}</span>
            </div>
            <div class="detail_price">
                <span><i>￥</i>{{details.d_style_price}}</span>
                <s v-show="details.d_style_original_price!=0">{{details.d_style_original_price}}</s>
            </div>
        </div>
        <div class="detail_icon_list" style="touch-action: pan-x">
            <div v-for="(icons,ic) in inforList.iconList" :key="ic" @click="lookIconList">
                <img :src="icons.src" alt="">
                <p>{{icons.name}}</p>
                <span>{{icons.val}}</span>
            </div>
        </div>
        <div class="detail_promotion detail_options" @click="lookGiftList">
            <div class="name">促销</div>
            <div class="content">
                <div v-for="(gifs,gi) in inforList.giftList" :key="gi">
                    <i class="zp">赠品</i><span>{{gifs}}</span>
                </div>             
            </div>
            <div class="btn"><i></i></div>
        </div>
        <div class="detail_options detail_option_item" @click="showPopup">
            <div class="name">已选</div>
            <div class="content">
                <div>
                    <span>{{details.p_info}}<i> x 1</i></span>
                </div>            
            </div>
            <div class="btn"><i></i></div>
        </div>
        <div class="detail_options detail_option_item">
            <div class="name">送至</div>
            <div class="content">
                <div>
                    <span>北京市 东城区</span><i class="zt">{{details.d_style_status}}</i>
                </div>            
            </div>
            <div class="btn"><i></i></div>
        </div>    
        <div class="detail_options detail_option_item" @click="lookServerList">
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
                <div class="inline_block" v-for="(recom,rc) in staticList.recommend" :key="rc">
                    <img :src="recom.d_recommend_src" alt="">
                    <p>{{recom.d_recommend_name}}</p>
                    <span><i>¥</i>{{recom.d_recommend_price}}</span>
                </div>
            </div>
        </div> 
        <div class="swipe_comment">
            <van-swipe :touchable="imgList_isMove" :show-indicators="false" :loop="false" :width="320">
                <van-swipe-item v-for="(revw,rv) in staticList.reviewList" :key="rv" @click="lookReview(revw)">
                    <div class="block">
                        <div class="info">
                            <span class="icon">
                                <img :src="revw.reviewOnly.d_review_icon" alt="">
                            </span>
                            <span class="name">
                                <p>{{revw.reviewOnly.d_review_name}}</p>
                                <span>{{revw.reviewOnly.d_review_time}}</span>
                            </span>
                            <span class="zan">
                                <img src="@/assets/image/icon/zan.png" alt=""><i></i>{{revw.reviewOnly.d_review_zan}}
                            </span>
                        </div>
                        <div class="text">
                            {{revw.reviewOnly.d_review_text}}
                        </div>
                        <div class="imgList">
                            <img v-for="(img,i) in revw.imgList" :key="i" :src="img" alt="">
                        </div>
                        <div class="reply">
                            <i>{{revw.reviewOnly.d_review_reply_name}}</i>{{revw.reviewOnly.d_review_reply_val | sliceString}}
                        </div>
                    </div>
                </van-swipe-item>
            </van-swipe>               
        </div>      
        <div class="comment_all" @click="lookReviewAll">
            <a href="#">更多评论</a>
        </div>    
        <div class="height_imgListALL">
            <div class="height_infoAdd">
                <span>查看全部参数</span>
            </div>
            <div  class="heightImgList">
                <div :class="['itemImg',hImg.style_type]" v-for="(hImg,h) in heightImgList" :key="h">
                    <img :src="hImg.d_h_src+hImg.d_h_name+'_'+hImg.d_h_id+'_'+hImg.is_carousel+hImg.img_type">
                </div>
            </div>
            <div class="carouselAll">
                <div ref="carousel" :class="['carousel',heCarousel.name]" v-for="(heCarousel,hc) in heightCarouselAll" :key="hc">
                    <van-swipe :autoplay="5000" indicator-color="#eee">
                        <van-swipe-item v-for="(hcItem,hi) in heCarousel.value" :key="hi">
                            <img :src="hcItem.d_h_src+hcItem.d_h_name+'_'+hcItem.d_h_id+'_'+hcItem.is_carousel+hcItem.img_type" alt="">
                        </van-swipe-item>                                        
                    </van-swipe>
                </div>
            </div>
        </div> 
        <div class="forYouRecommend">
            <div class="title">
                <span>为你推荐</span>
            </div>
            <div class="content">
                <div class="block" v-for="(f_y_r,fi) in 10" :key="fi">
                    <img src="https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c451fe88be0c6a382d3dc8f03814c274.jpg?thumb=1&w=360&h=360" alt="">
                    <div class="name">全面屏电视E65A</div>
                    <div class="price">
                        <span>2999</span>
                        <s>3999</s>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="detailFoot">
            <div class="detailFootBar">
                <div class="home">
                    <img src="@/assets/image/icon/首页.png" alt="">
                    <span>首页</span>
                </div>
                <div class="shopp">
                    <i>{{count}}</i>
                    <img src="@/assets/image/icon/购物车.png" alt="">
                    <span>购物车</span>
                </div>
                <div class="addShopp">
                    <span>加入购物车</span>
                </div>                        
            </div>            
        </div>
        <div class="showPage">
            <van-popup v-model="show"
            position="bottom" round
            :style="{height:'82%'}"
            >
                <div class="header">
                    <div class="close" @click="closeShowPage"><van-icon name="cross"/></div>
                    <div class="pro_info">
                        <div class="src"><img :src="details.d_style_src" alt=""></div>
                        <div class="info">
                            <p class="price"><span>{{details.d_style_price}}</span><s v-show="details.d_style_original_price!=0">{{details.d_style_original_price}}</s></p>
                            <span class="title">{{details.p_info}}</span>
                        </div>
                    </div>
                </div>
                <div class="content">
                    <div class="blocks">
                        <p class="name">版本</p>
                        <div class="val">
                            <span @click="selectVersion(ver.d_style_version)" :v-model="ver.d_style_version" :class="ver.d_style_version==version?'selectActive':''" v-for="(ver,vi) in inforList.versionList" :key="vi">{{ver.d_style_version}}</span>
                        </div>
                    </div>
                    <div class="blocks">
                        <p class="name">颜色</p>
                        <div class="val">
                            <span @click="selectColor(col.d_style_color)" :v-model="col.d_style_color" :class="col.d_style_color==color?'selectActive':''" v-for="(col,ci) in inforList.colorList" :key="ci">{{col.d_style_color}}</span>
                        </div>
                    </div> 
                    <div class="addCount">
                        <span>购买数量</span>
                        <div class="compute">
                            <span @click="minus" :class="['minus',count<2?'disabled':'']">－</span>
                            <span class="val" :v-model="count">{{count}}</span>
                            <span @click="add" class="add">＋</span>
                        </div>
                    </div>
                    <div class="accident_protection">
                        <div class="title">
                            <span class="name">意外保护<van-icon name="question-o" /></span>
                            <span class="val" v-show="server" v-if="accidented">手机意外碎屏/进水/碾压等损坏</span>
                            <span class="val" v-show="server" v-if="brokened">手机意外碎屏</span>
                        </div>
                        <div :class="['block',accidented?'selectActive':'']" @click="accident">
                            <span class="name">意外保障服务</span>
                            <span class="val">299元</span>
                        </div>
                        <div :class="['block',brokened?'selectActive':'']" @click="broken">
                            <span class="name">碎屏保障服务</span>
                            <span class="val">159元</span>
                        </div>  
                        <div class="info" v-show="server">
                            <span class="affirm"><van-icon name="checked" />我已阅读</span>
                            <span class="clause">服务条款 | </span>
                            <span class="issue">常见问题</span>
                        </div>                  
                    </div>    
                    <div class="accident_protection">
                        <div class="title">
                            <span class="name">延长保修<van-icon name="question-o" /></span>
                            <span class="val" v-show="warrantyed">厂保延一年，性能故障免费维修</span>
                        </div>
                        <div :class="['block',warrantyed?'selectActive':'']" @click="warranty">
                            <span class="name">延长保修服务</span>
                            <span class="val">99元</span>
                        </div>
                        <div class="info" v-show="warrantyed">
                            <span class="affirm"><van-icon name="checked" />我已阅读</span>
                            <span class="clause">服务条款 | </span>
                            <span class="issue">常见问题</span>
                        </div>                  
                    </div>                   
                </div> 
                <div class="footer">
                    <div class="addShopp">加入购物车</div>
                </div>                        
            </van-popup>            
        </div>
        <div class="showPageList">
            <van-popup
            v-model="iconListShow"
            round
            position="bottom"
            :style="{ height: '80%' }"
            >       
                <div class="iconList showPopupPage">
                    <div class="close" @click="closeShowPage"><van-icon name="cross"/></div>
                    <div class="header">
                        <span>关键参数</span>
                    </div>    
                    <div class="content">
                        <p class="itemLine" v-for="(sss,s) in 15" :key="s">
                            <span class="name">后置摄像头</span>
                            <span class="val">4800万+1200万+1600万像素</span>
                        </p>
                    </div>
                    <div class="footer">
                        <div class="achieve">完成</div>                    
                    </div>
                </div>     
            </van-popup>
            <van-popup
            v-model="giftListShow"
            round
            position="bottom"
            :style="{ height: '80%' }"
            >       
                <div class="giftList showPopupPage">
                    <div class="close" @click="closeShowPage"><van-icon name="cross"/></div>
                    <div class="header">
                        <span>促销</span>
                    </div>    
                    <div class="content">
                        <div class="itmeBlock" v-for="(sss,s) in 2" :key="s">
                            <p class="name"><span>赠品</span></p>
                            <p class="val">无线车充或无线充电宝（赠品二选一）</p>
                        </div>
                    </div>
                </div>     
            </van-popup>      
            <van-popup
            v-model="serverListShow"
            round
            position="bottom"
            :style="{ height: '80%' }"
            >       
                <div class="serverList showPopupPage">
                    <div class="close" @click="closeShowPage"><van-icon name="cross"/></div>
                    <div class="header">
                        <span>服务说明</span>
                    </div>    
                    <div class="content">
                        <div class="serverBlock" v-for="(sss,s) in 4" :key="s">
                            <p class="name"><van-icon name="passed"/><span>赠品</span></p>
                            <p class="val">由小米发货的商品，单笔满150元免运费;
                            由第三方商家发货的商品，免运费;
                            特殊商品需要单独收取运费，具体以实际结算金额为准；优惠券等不能抵扣运费金额;
                            </p>
                        </div>
                    </div>
                </div>     
            </van-popup>                   
        </div>
    </div>
</template>
<script>
import ls from '../../assets/js/ls.js'
import { Button,Dialog,Row, Col,Icon,Tab, Tabs ,Tabbar, TabbarItem,Lazyload,PullRefresh,CountDown,Swipe, SwipeItem, Popup,ActionSheet } from 'vant';
export default {
    name:'product_detail',
    props:[],    
    data(){
        return{
            show:false,
            iconListShow:false,
            giftListShow:false,
            serverListShow:false,
            isSeckill:true,
            server:false,
            accidented:false,
            brokened:false,
            warrantyed:false,
            scrollTop2:0,
            scrollBtn2:true,
            imgList_isMove:true,
            heightImgList: [],
            heightCarouselAll:[],
            inforList:{},
            staticList:{},
            time:100000,
            details:'',
            version:'',
            color:'',
            name:'',
            model:'',
            count:1
        }
    },
　　filters: {
　　　　sliceString(value) {
    // console.log(value)
　　　　　　return value.substring(0,35)+'...'
　　　　}
　　},    
    components:{
    },
    // beforeRouteUpdate (to, from, next) {
    //     // just use `this`
    //     this.name = to.params.name
    //     console.log(this.name)
    //     next()
    // },
    beforeRouteUpdate (to, from, next) {
      console.log(to,from,next)
        if(this.$route.path!='/home') //假设name为home的路由都使用`slide-left`,其它的路由都为`slider-right`
        {
            this.$router.isBack=true;
        }
      let isBack = this.$router.isBack
      if (isBack) {
        this.transitionName = 'slide-right'
      } else {
        this.transitionName = 'slide-left'
      }
      this.$router.isBack = false
      next()
    },
　  watch: {
    　　'$route' (to, from) {
        console.log(to)
        console.log(from)        
        console.log(111111111111111111111111111)        
    　　　　let isBack = this.$router.isBack  //  监听路由变化时的状态为前进还是后退
    　　　　　　if(isBack) {
    　　　　　　　　this.transitionName = 'slide-right'
    　　　　　　} else {
    　　　　　　       this.transitionName = 'slide-left'
    　　　　　}
    　　    this.$router.isBack = false
    　　}
　  },     
    created(){

    },
    updated(){

    },
    mounted(){
        this.init()
        this.initStaticData()           
        // window.addEventListener('resize',this.setRemUnits)    
    },
    computed:{
        // imgList:function(){
        //     var src = './static/image/linshi/dianshi_'
        //     for(var i=0;i<17;i++){
        //         this.imageList.push(src+(i+1)+'.png')
        //     }
        //     return this.imageList
        // }
      
    },    
    methods:{
        lookReviewAll(){
            this.$router.push({name:'reviewAll',params:this.name})
        },
        lookReview(data){
            console.log(data)
            this.$router.push({name:'review',params:data})
            // this.$router.push({name:'review',params:data})
        },
        lookIconList(){
            this.iconListShow = true
        },
        lookGiftList(){
            this.giftListShow = true
        },
        lookServerList(){
            this.serverListShow = true
        },        
        overTime(){//倒计时结束
            this.isSeckill = false
        },
        selectVersion(newVersion){//选择规格款式
            this.version = newVersion
            let newItemInfo = this.name+' '+this.model+' '+this.version+' '+this.color
            console.log(newItemInfo)
            this.init(newItemInfo)
        },
        selectColor(newColor){//选择颜色款式
            this.color = newColor  
            let newItemInfo = this.name+' '+this.model+' '+this.version+' '+this.color
            console.log(newItemInfo)
            this.init(newItemInfo)                      
        },
        minus(){//购买数量--
            this.count>1?this.count--:1
        },
        add(){//购买数量++
            this.count++
        },  
        closeShowPage(){//关闭下拉页面
            this.show = false
            this.iconListShow = false
            this.giftListShow = false
            this.serverListShow = false
        },
        showPopup(){//展开下拉页面
            this.show = !this.show
        },        
        warranty(){//点击保修服务
            this.warrantyed = !this.warrantyed             
        },
        accident(){//点击意外
            this.server = true
            if(this.server){
                this.accidented = !this.accidented
                this.brokened = false
            }else{
                this.server = !this.server       
            }
            if(!this.accidented && !this.brokened){
                this.server = false           
            }
        },
        broken(){//点击碎屏
            this.server = true
            if(this.server){
                this.brokened = !this.brokened
                this.accidented = false
            }else{
                this.server = !this.server       
            }    
            if(!this.accidented && !this.brokened){
                this.server = false           
            }            
        },
        init(newItemInfo){
            let itemInfo = null
            if(newItemInfo){
                itemInfo = newItemInfo
            }else{
                itemInfo = ls.getItem('info')
            }
            // let itemInfo = ls.getItem('info') || newItemInfo
            console.log(itemInfo)
            let routerName = ls.getItem('routerName')       
            let url2 = this.HOST + '/detail/getDetailInfoAll.php'            
            if(itemInfo){
                this.$axios.post(url2,itemInfo).then(response=> {

                    // let valuesList = response.data
                    if(response.data){
                        this.inforList.colorList = response.data.colorList
                        this.details = response.data.detail
                        this.version = response.data.detail.d_style_version
                        this.color = response.data.detail.d_style_color
                        this.name = response.data.detail.p_name
                        this.model = response.data.detail.d_style_model
                        let stime = response.data.detail.d_seckill_time
                        this.time = Number(stime)
                        // this.time = 10000
                        this.inforList.giftList = response.data.giftList
                        this.inforList.iconList = response.data.iconList
                        this.inforList.imgsList = response.data.imgsList
                        this.inforList.versionList = response.data.versionList
                        // console.log(this.inforList)
                        // console.log(this.details)                        
                    }
                }).catch(error=> {
                });                 
 
            }               
        },
        initStaticData(){
            let itemName = ls.getItem('name')
            console.log(itemName)
            let url = this.HOST + '/detail/getDetailReview.php'                 
            let url2 = this.HOST + '/detail/getDetailHeightImgs.php'                 
            if(itemName){
                this.$axios.post(url,itemName).then(response=> {
                    console.log(response.data)
                        this.staticList.reviewList = response.data.reviewList
                        this.staticList.recommend = response.data.recommend     
                        console.log(this.staticList)               
                })
                .catch(error=> {
                });                     
                this.$axios.post(url2,itemName).then(response=> {
                    // console.log(response.data)
                    this.heightImgList = response.data.imgList;
                    this.heightCarouselAll = response.data.carouselAll;
                    console.log(this.heightImgList)       
                        this.$nextTick(()=>{
                            let carousel =  this.$refs.carousel
                            let imgBlock =  document.getElementsByClassName('style_carousel')
                            let first_carouse =  document.getElementsByClassName('first_carouse')[0]
                            let height_infoAdd =  document.getElementsByClassName('height_infoAdd')[0]
                            first_carouse.appendChild(height_infoAdd);         
                            for(let s=0;s<carousel.length;s++){
                                imgBlock[s].appendChild(carousel[s])              
                            }
                    })                
                })
                .catch(error=> {
                });                 
            }
        },
        ceiling2(){
            var self = this
            var detail = self.$refs.detail
            var scrollHeight = detail.scrollHeight
            if(self.scrollBtn2===true){
                detail.scrollTop = scrollHeight
            }else{

                detail.scrollTop = 0
            }
            self.scrollBtn2 = !self.scrollBtn2;
            
        },    
        paperScroll2(e){
            e.target!==undefined?e.stopPropagation():''
            // e.stopPropagation()
            let self = this
            let $this = e.srcElement || e
            self.scrollTop2 =  $this.scrollTop
        },            
        imgListmove(){
            this.imgList_isMove = false
        },     
        imgListend(){
            this.imgList_isMove = true            
        },           
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
        // overflow-y: scroll;
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
                    .van-count-down{
                        color: #fff;
                        display: inline-block;
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
                    width: 95%;
                    display: inline-block;
                    color: #676767;      
                    overflow: hidden;
                    text-overflow: ellipsis;
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
        .swipe_comment{
            margin-left: 10px;
            .block{
            margin-left: 10px;
            margin-top: 20px;
                text-align: left;
                background: #fafafa;
                padding: 20px;
                border-radius:8px;
                span{
                    line-height: 20px;
                }
                .info{
                    display: flex;
                    width: 100%;
                    justify-content: space-between;
                    text-align: left;
                    color: rgba(0,0,0,.54);
                    .icon{
                        img{
                            display: block;
                            width: 34px;
                            height: 34px;                            
                            border-radius: 50%;
                        }
                    }
                    .name{
                        margin-left: 12px;
                        width: 80%;
                        p{
                            color: rgba(0,0,0,.87);
                        }
                        span{

                        }
                    }
                    .zan{
                        display: inline-flex;
                        align-items: center;                      
                        text-align: right;

                        img{
                            margin-right: 5px;
                            margin-top: -2px;
                            width: 20px;
                            height: 20px;     
                        }
                    }
                }
                .text{
                    height: 35px;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    // touch-action: pan-y;
                }
                .imgList{
                    padding: 10px 0px 10px;
                    overflow-x: auto;
                    white-space: nowrap;
                    img{
                        margin-right: 5px;
                        display: inline-block;
                        width: 85px;
                        height: 65px;   
                        border-radius:8px;                                                 
                    }
                }
                .reply{
                    margin-bottom: 10px;
                    height: 35px;
                    overflow: hidden;
                    text-overflow: ellipsis;                    
                    i{
                        color: #f56600;
                    }
                }
            }                        
        }
        .comment_all{
            margin: 15px 0;
            a{
                color:#4e72a5;
                font-size: .33rem;
            }
            a:after{
                content: "\25BA";
                font-size: 3.2px;
                font-size: .2rem;
                vertical-align: 2px;
                padding-left: 2px;
                display: inline-block;
                -webkit-transform: scale(.8,1.5);
                transform: scale(.8,1.5);
                font-family: Times New Roman;
            }
        }
        .height_imgListALL{
            position: relative;
            top:0;
            left: 0;
            .height_infoAdd{
                text-align: left;
                margin:20px 0 20px 20px;
                span{
                    font-size: .33rem;
                    color: #4e72a5;
                }
                span:after{
                    content: "\25BA";
                    font-size: .2rem;
                    vertical-align: middle;
                    display: inline-block;
                    -webkit-transform: scale(.8,1.5);
                    transform: scale(.8,1.5);
                    font-family: Times New Roman;                    
                }
            }
            .heightImgList{
                .itemImg{
                    &>img{
                        width: 100%;
                        height: 100%;                        
                    }
                }                                                        
            }
            // .carouselAll{       
                .carousel{
                    img{
                        width: 100%;
                        height: 250px;
                    }
                }     
                .carousel1{

                }
                .carousel2{

                }
                .carousel3{
                    img{
                        width: 82.5%;
                        height: 230px;
                    }
                }
                .carousel4{
                    img{
                        width: 100%;
                        height: 310px;
                    }
                }                                                
            // }
        }
        .forYouRecommend{
            padding: 70px 20px;
            background: #fafafa;
            .title{
                text-align: left;
                span{
                    font-size: .48rem;
                    color: rgba(0,0,0,.87);
                }
            }
            .content{
                width: 100%;
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                text-align: left;
                .block{
                    width: 46%;
                    height: 200px;
                    margin-top: 20px;
                    img{
                        border-radius: 18px;
                        width: 100%;
                        height: 150px;                        
                    }
                    .name{
                        margin-left: 15px;                        
                        line-height: 30px;
                        font-size: .28rem;
                        color: rgba(0,0,0,.87);                      
                    }
                    .price{
                        margin-left: 15px;
                        span{
                            color: #f56600;
                            font-size: .32rem;
                            margin-right: 3px;
                        }
                        span:before{
                            content: '\A5';
                            display: inline-block;
                            // margin-top: -2px;
                            vertical-align: middle;
                            padding-bottom: 5px;
                            padding-right: 3px;
                            font-size: .2rem;        
                        }
                        s{
                            color: rgba(0,0,0,.54);
                        }
                        s:before{
                            content: 'Y';
                            font-size: .14rem;        
                        }                        
                    }
                }
            }
        }
        .detailFoot{
            width: 95%;
            margin:  140px auto 10px;
            .detailFootBar{
                background: #fff;            
                position: fixed;
                bottom:10px;
                z-index: 1000;
                height: 52px;
                border: 1px solid #fafafa;
                border-radius: 10px;
                box-shadow: 0px 1px 4px 2px rgba(0, 0, 0, .3); 
                padding: 6px 10px;
                display: flex;
                overflow: hidden;
                div{
                    height: 25px;                  
                    display: inline-block;
                    img{
                        margin: 0 auto;                         
                        display: block;
                    }
                    span{
                        color:rgba(0,0,0,.54);
                    }
                }
                .home{
                    width: 50px;
                    img{
                        width: 21px;
                        height: 23px;  
                        margin-bottom: 1px;       
                    }
                }
                .shopp{
                    position: relative;
                    i{
                        position: absolute;
                        background: #ed4d41;
                        color: #fff;
                        border-radius: 50%;
                        font-size: .10rem;
                        width: 15px;
                        height: 15px;       
                        top:-2px;
                        right: 2px;                  
                    }
                    img{
                        width: 24px;
                        height: 24px;          
                    }
                }
                .addShopp{
                    height: 100%;
                    margin-left: 120px;
                    display: inline-flex;
                    align-items:center;
                    span{
                        box-shadow: 0px 1px 4px 2px rgba(0, 0, 0, .1);                
                        background: #f56600;
                        color: #fff;
                        font-size: .3rem;
                        border-radius: 15px;
                        width: 125px;
                        line-height: 34px; 
                    }
                }
            }            
        }
        .showPage{
            overflow: hidden;
            .selectActive{
                border-color: #f566009d!important;
                color:#f56600;
            }                
            .header{
                position: fixed;
                background: #fff;
                .close{
                    padding: 10px 15px 0px 0px;       
                    text-align: right;
                    font-size: .44rem;    
                    color: #aaa;
                    i{
                        vertical-align: bottom;
                    } 
                }        
                .pro_info{
                    padding: 0px 20px 20px;
                    align-items: center;
                    display: flex;
                    .src{
                        width: 104px;
                        height: 104px;          
                        border: 1px solid #f0f0f0;               
                        display: inline-block;
                        img{
                            width: 100%;
                            height: 100%;                  
                            display: block;
                        }
                    }
                    .info{
                            text-align: left;
                            margin-left: 15px;
                        .price{
                            span{
                                color: #f56600;
                                font-size: .49rem;
                                margin-right: 10px;
                            }
                            span:before{
                                content: '\A5';
                                display: inline-block;
                                // margin-top: -2px;
                                vertical-align: middle;
                                padding-bottom: 5px;
                                padding-right: 3px;
                                font-size: .29rem;        
                            }
                            s{
                                color: rgba(0,0,0,.54);
                            }
                            s:before{
                                content: 'Y';
                                font-size: .25rem;        
                            }                        
                        }
                        .title{
                            font-size: .29rem;
                        }
                    }
                }                
            }
            .content{
                margin-top: 155px;
                margin-bottom: 55px;
                padding: 0px 20px;                
                overflow-y: auto;
                .blocks{
                    border-top:1px solid #f8f8f8;                    
                    padding: 0px 0px 20px;
                    text-align: left;
                    .name{
                        font-size: .25rem;
                        padding: 15px 0px;
                    }
                    .val{
                        font-size: .23rem;
                        span{
                            display: inline-block;
                            padding: 9.5px 0px;
                            text-align: center;
                            width: 76.5px;
                            border: 1px solid #f0f0f0;
                            margin-left: 8px;
                        }
                    }
                }
                .addCount{
                    border-top:1px solid #f8f8f8;
                    padding: 20px 0 0px;       
                    display: flex;
                    justify-content: space-between;  
                    align-items:center;           
                    span{
                        font-size: .25rem;
                    }
                    .compute{
                        border: 1px solid #f0f0f0;
                        overflow: hidden;
                        span{
                            display: inline-block;
                            font-size: .48rem;
                            background: #f0f0f0;
                            color: #676767;
                            width: 28px;
                            margin-left: -2.5px;
                            padding-left: 0px;
                            line-height: 28px;
                            vertical-align: middle;
                            padding: 0px 3px;
                        }
                        .val{
                            font-size: .36rem;        
                            background: #fff;
                            color: rgba(0,0,0,.87);
                        }
                        .disabled{
                            background: #fafafa;
                            color: #ccc;
                        }
                    }
                }
                .accident_protection{
                    font-size: .25rem;
                    display: flex;
                    padding: 20px 0;
                    justify-content: space-between;
                    flex-wrap: wrap;
                    text-align: left;                
                    .title{
                        padding: 25px 0 15px;
                        border-top:1px solid #f8f8f8;
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
            .footer{
                position: fixed;
                bottom: 0px;
                width: 100%;
                background: #fff;
                padding: 10px 0;
                box-shadow: 0px 5px 15px 1px rgba(0, 0, 0, .1);                          
                .addShopp{
                    width: 91%;
                    margin: 0 auto;
                    padding: 7.5px 0;
                    color: #fff;
                    font-size: .29rem;
                    border-radius: 15px;
                    background: #f56600;
                    box-shadow: 0px 1px 4px 2px rgba(0, 0, 0, .1);                       
                }
            }
        }
        .showPopupPage{
            overflow: hidden;
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
                margin-top: 70px;
                margin-bottom: 45px;
                padding: 0px 20px;                
                overflow-y: scroll;
                text-align: left;
                font-size: .29rem;
                .itemLine{
                    padding: 15px 0;
                    .name{
                        color: rgba(0,0,0,.54); 
                        width: 200px;
                        margin-right: 50px;
                    }
                }
                .itmeBlock{
                    padding: 10px 0;
                    margin-bottom: 10px;
                    border-bottom: 1px solid #f9f9f9;
                    .name{
                        span{
                            font-size: .1rem;
                            padding: 0px 2px;
                            vertical-align: bottom;
                            color: #f56600;
                            border:1px solid #e4a97fa6;
                        }
                    }
                    .val{
                        padding: 10px 0;
                        color: #000;
                    }
                }
                .serverBlock{
                    padding: 10px 0;
                    .name{
                        color: #000;
                        i{
                            color: #f56600;
                            font-size: .36rem;
                            vertical-align: -3px;
                            width: 35px;
                        }
                        span{
                        }
                    }
                    .val{
                        color: rgba(0,0,0,.54);
                        font-size: .25rem;
                        margin-left: 35px;
                        padding: 3px 0;
                    }
                }
            }
            .footer{
                position: fixed;
                bottom: 0px;
                width: 100%;
                background: #fff;
                padding: 10px 0;
                box-shadow: 0px 5px 15px 1px rgba(0, 0, 0, .1);                          
                .achieve{
                    width: 91%;
                    margin: 0 auto;
                    padding: 7.5px 0;
                    color: #fff;
                    font-size: .29rem;
                    border-radius: 15px;
                    background: #f56600;
                    box-shadow: 0px 1px 4px 2px rgba(0, 0, 0, .1);                       
                }                
            }
        }
        .ceiling2{
            position: fixed;
            right:15px;
            bottom:80px;
            z-index: 1000;
            border-radius: 50%;
            box-shadow: 0px 0px 5px 2px rgba(0, 0, 0, .1);            
            a{
                img{
                    width: 36.5px;
                    height: 36.5px;
                }
            }
        }                               
    }
</style>


