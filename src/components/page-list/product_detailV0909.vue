<template>
    <div ref="detail" class="product_detail" @scroll="paperScroll2($event)">  
        <!--~~~~~~~~~~~~~~ 吸顶 ~~~~~~~~~~~~~~~~~~-->
        <div v-show="scrollTop2>=300" class="ceiling2"><a href="javascript:void(0);" @click="ceiling2"><img src="@/assets/image/icon/吸顶.png" alt=""></a></div>               
        <!--~~~~~~~~~~~~~~ 顶部导航 ~~~~~~~~~~~~~~~~~~-->
        <div class="ceiling" :style="{boxShadow:scrollTop2<scrollIndexArr[2]?'0 1px 4px 2px rgba(0,0,0,'+(scrollTop2/500<=0.3?scrollTop2/500:0.3)+')':'',background:'rgba(255,255,255,'+(scrollTop2/500<=1?scrollTop2/500:1)+')'}">
            <a class="left" @click="routerGo"><van-icon :class="[scrollTop2>=200?'topBtnHeheight':'']" name="arrow-left" /></a>
            <div :style="{pointerEvents:scrollTop2>=200?'auto':'none'}" class="scrollTab" v-show="scrollTop2>=200">
                <span :class="scrollIndex===st?'scrollTabActive':''" @click="selectScrollTab(scrollTab,st)" v-for="(scrollTab,st) in ['商品','评价','详情']" :key="st">{{scrollTab}}</span>
            </div>
            <a class="right"><van-icon :class="[scrollTop2>=200?'topBtnHeheight':'']" name="ellipsis" /></a>
        </div>
        <!--~~~~~~~~~~~~~~ 顶部轮播图 ~~~~~~~~~~~~~~~~~~-->        
        <div class="swipe_top offsetTopIndex" data-scrollTab="scrollTab" @click="lookTopImg(inforList.imgsList)">
            <van-swipe :autoplay="10000">
                <van-swipe-item v-for="(imgs,im) in inforList.imgsList" :key="im"><img :src="imgs" alt=""></van-swipe-item>
            </van-swipe>               
        </div>
        <!--~~~~~~~~~~~~~~ 商品详情信息 ~~~~~~~~~~~~~~~~~~-->        
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
                <i>{{details.d_style_high_title}}</i><span>{{details.d_style_sub_title}}</span>
            </div>
            <div class="detail_price">
                <span><i>￥</i>{{details.d_style_price}}</span>
                <s v-show="details.d_style_original_price!=0">{{details.d_style_original_price}}</s>
            </div>
        </div>
        <!--~~~~~~~~~~~~~~ 设备配置列表 ~~~~~~~~~~~~~~~~~~-->        
        <div class="detail_icon_list" style="touch-action: pan-x">
            <div v-for="(icons,ic) in inforList.iconList" :key="ic" @click="lookIconList">
                <img :src="icons.src" alt="">
                <p>{{icons.name}}</p>
                <span>{{icons.val}}</span>
            </div>
        </div>
        <!--~~~~~~~~~~~~~~ 分期栏 ~~~~~~~~~~~~~~~~~~-->        
        <div class="detail_installment detail_options" @click="lookInstallmentList" v-show="inforList.installment && inforList.installment.length>0">
            <div class="name">分期</div>
            <div class="content">
                <span v-for="(instal,il) in inforList.installment" :key="il">
                    {{instal.name}}
                </span>
            </div>
            <div class="btn"><i></i></div>
        </div>
        <!--~~~~~~~~~~~~~~ 赠品栏 ~~~~~~~~~~~~~~~~~~-->        
        <div class="detail_promotion detail_options" v-if="pi.pi_gift !== undefined && pi.pi_gift.length >0">
            <div class="name">促销</div>
            <div class="content">
                <div v-for="(gifs,gi) in pi.pi_gift" :key="gi" @click="lookGiftList(gi)">
                    <i class="zp">赠品</i><span>{{gifs.name}}</span>
                </div>             
            </div>
            <div class="btn"><i></i></div>
        </div>
        <!--~~~~~~~~~~~~~~ 选择商品 ~~~~~~~~~~~~~~~~~~-->        
        <div class="detail_options" @click="showPopup">
            <div class="name">已选</div>
            <div class="content">
                <div>
                    <span>{{details.p_info}}<i> x 1</i></span>
                </div>            
            </div>
            <div class="btn"><i></i></div>
        </div>
        <!--~~~~~~~~~~~~~~ 地址栏 ~~~~~~~~~~~~~~~~~~-->        
        <div class="detail_options" style="borderTop:none">
            <div class="name">送至</div>
            <div class="content">
                <div>
                    <span>北京市 东城区</span><i class="zt">{{details.d_style_status}}</i>
                </div>            
            </div>
            <div class="btn"><i></i></div>
        </div>    
        <!--~~~~~~~~~~~~~~ 承诺栏 ~~~~~~~~~~~~~~~~~~-->        
        <div class="detail_options" style="borderTop:none" @click="lookPromiseList">
            <div class="service">    
                <span v-show="pm<3" v-for="(prom,pm) in inforList.promise" :key="pm"><i>✔</i>{{prom.name}}</span>     
            </div>
            <div class="btn"><i></i></div>
        </div> 
        <!--~~~~~~~~~~~~~~ 相关推荐 ~~~~~~~~~~~~~~~~~~-->        
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
        <!--~~~~~~~~~~~~~~ 评论区 ~~~~~~~~~~~~~~~~~~-->        
        <div class="swipe_comment offsetTopIndex" data-scrollTab="scrollTab">
            <van-swipe :touchable="imgList_isMove" :show-indicators="false" :loop="true" :width="320">
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
                            {{revw.reviewOnly.d_review_text | sliceString | lineFeed}}
                        </div>
                        <div class="imgList">
                            <img v-for="(img,i) in revw.imgList" :key="i" :src="img" alt="">
                        </div>
                        <div class="reply" v-for="(reply,ry) in revw.replyList" :key="ry">
                            <i>{{reply.name}}：</i>{{reply.val | sliceString}}
                        </div>
                    </div>
                </van-swipe-item>
            </van-swipe>               
        </div>      
        <div class="comment_all" @click="lookReviewAll">
            <a href="#">更多评论</a>
        </div>    
        <!--~~~~~~~~~~~~~~ 商品详情图片展示 ~~~~~~~~~~~~~~~~~~-->        
        <div class="height_imgListALL offsetTopIndex" data-scrollTab="scrollTab">
            <div :class="['height_title',scrollTop2>=scrollIndexArr[2]?'heightTitleFixed':'']" v-show="heightImgList.length>1">
                <span v-for="(hList,hl) in heightImgList" @click="selectHeightImgPage(hl)" :key="hl+'T'" :class="heightIndex===hl?'active':''">{{hList.name}}</span>
            </div>
            <div class="heightImgPage" v-for="(hList,hl) in heightImgList" :key="hl" v-show="heightIndex===hl">
                <div class="heightImgList" v-for="(hBlock,hb) in hList.values" :key="hb">
                    <div class="itemImg" v-if="hBlock.type==='a'">
                        <img v-for="(himg,hi) in hBlock.length" :key="hi" :src="hList.src+hList.p_name+'/'+hList.type+'/'+hList.type+hBlock.index+hBlock.type+(hi+1)+'.'+hBlock.suffix" alt="">
                    </div>
                    <div class="height_infoAdd" v-if="hBlock.type==='b'" @click="lookAddHeightImgList(hList.src+hList.p_name+'/'+hList.type+'/'+hList.type+hBlock.index+hBlock.type,hBlock.length,'.'+hBlock.suffix)">
                        <span>查看全部参数</span>
                    </div>                    
                    <div :class="['carousel',hBlock.class]" v-if="hBlock.type==='c'">
                        <van-swipe :autoplay="5000" indicator-color="#eee">
                            <van-swipe-item v-for="(himg,hi) in hBlock.length" :key="hi+'sss'">
                                <img :style="hBlock.style" :src="hList.src+hList.p_name+'/'+hList.type+'/'+hList.type+hBlock.index+hBlock.type+(hi+1)+'.'+hBlock.suffix" alt="">
                            </van-swipe-item>                                        
                        </van-swipe>                        
                    </div>
                </div>
            </div>
        </div>    
        <!--~~~~~~~~~~~~~~ 为你推荐列表 ~~~~~~~~~~~~~~~~~~-->             
        <div class="forYouRecommend">
            <div class="title">
                <span>为你推荐</span>
            </div>
            <div class="content">
                <div class="block" v-for="(fourd,fr) in staticList.foryouRecommend" :key="fr">
                    <img :src="fourd.df_r_src" alt="">
                    <div class="name">{{fourd.df_r_name}}</div>
                    <div class="price">
                        <span>{{fourd.df_r_price}}</span>
                        <s v-show="fourd.df_r_original_price!=0">{{fourd.df_r_original_price}}</s>                        
                    </div>
                </div>
            </div>
        </div>
        <!--~~~~~~~~~~~~~~ 详情页底部 ~~~~~~~~~~~~~~~~~~-->        
        <div class="detailFoot">
            <div class="detailFootBar">
                <div class="home">
                    <img src="@/assets/image/icon/首页.png" alt="">
                    <span>首页</span>
                </div>
                <div class="shopp" @click="goShopping">
                    <i v-show="shoppingCountAll>0">{{shoppingCountAll}}</i>
                    <img src="@/assets/image/icon/购物车.png" alt="">
                    <span>购物车</span>
                </div>
                <div class="addShopp" @click="openProductShopping">
                    <span>加入购物车</span>
                </div>                        
            </div>            
        </div>
        <!--~~~~~~~~~~~~~~ 承诺&商品面板 ~~~~~~~~~~~~~~~~~~-->        
        <div class="showPage">
            <van-image-preview
                :startPosition="0"
                :showIndex="false"
                :showIndicators="true"
                v-model="imgLsitShow"
                :images="images"
                @change="onChange"
                >
                <template v-slot:index>第{{ index }}页</template>
            </van-image-preview>                  
            <van-popup v-model="show"
            position="bottom" round
            :style="{height:'82%'}"
            >
                <div class="header">
                    <div class="close" @click="closeShowPage"><van-icon name="cross"/></div>
                    <div class="pro_info">
                        <div class="src" @click="lookDetailImg(inforList.imgsList)"><img :src="details.d_style_src" alt=""></div>
                        <div class="info">
                            <p class="price"><span>{{details.d_style_price}}</span><s v-show="details.d_style_original_price!=0">{{details.d_style_original_price}}</s></p>
                            <span class="title">{{details.p_info}}</span>
                        </div>
                    </div>
                </div>
                <!--~~~~~~~~~~~~~~ 商品列表 ~~~~~~~~~~~~~~~~~~-->                
                <div class="content" v-show="productListShow">
                    <!--~~~~~~~~~~~~~~ 版本选择 ~~~~~~~~~~~~~~~~~~-->                           
                    <div class="blocks">
                        <p class="name">版本</p>
                        <div class="val">
                            <span @click="selectVersion(ver.d_style_version)" :v-model="ver.d_style_version" :class="ver.d_style_version==version?'selectActive':''" v-for="(ver,vi) in inforList.versionList" :key="vi">{{ver.d_style_version}}</span>
                        </div>
                    </div>
                    <!--~~~~~~~~~~~~~~ 颜色选择 ~~~~~~~~~~~~~~~~~~-->                           
                    <div class="blocks">
                        <p class="name">颜色</p>
                        <div class="val">
                            <span @click="selectColor(col.d_style_color)" :v-model="col.d_style_color" :class="col.d_style_color==color?'selectActive':''" v-for="(col,ci) in inforList.colorList" :key="ci">{{col.d_style_color}}</span>
                        </div>
                    </div> 
                    <!--~~~~~~~~~~~~~~ 添加商品 ~~~~~~~~~~~~~~~~~~-->                           
                    <div class="addCount">
                        <span>购买数量</span>
                        <div class="compute">
                            <span @click="minus" :class="['minus',count<2?'disabled':'']">－</span>
                            <span class="val" :v-model="count">{{count}}</span>
                            <span @click="add" :class="['add',count>=details.d_style_MaxCount?'disabled':'']">＋</span>
                        </div>
                    </div>
                    <!--~~~~~~~~~~~~~~ 服务选择 ~~~~~~~~~~~~~~~~~~-->       
                    <div class="accident_protection" v-for="(pis,pi) in pi.pi_server" :key="pi">
                        <div class="title">
                            <span class="name" @click="zengzhi=!zengzhi,zengzhiIndex=pis.a_srcIndex">{{pis.name}}<van-icon name="question-o" /></span>
                            <span v-for="(vss,vi) in pis.values" :key="vi" class="val" v-show="pis.isSelect" v-if="vss.checked">{{vss.text}}</span>
                        </div>
                        <div v-for="(vss,vi) in pis.values" :key="vi" :class="['block',vss.checked?'selectActive':'']" @click="selectServer(pis.isSelect,pi,vss.checked,vi)">
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
                <!--~~~~~~~~~~~~~~ 承诺列表 ~~~~~~~~~~~~~~~~~~-->
                <div class="installmentList" v-show="installmentListShow">
                    <div class="title">
                        <span :class="installmentIndex===is?'installmentActive':''" @click="selectInstallmentTitle(is)" v-for="(install,is) in inforList.installment" :key="is+'t'">
                            {{install.name}}
                        </span>
                    </div>
                    <div class="block" v-for="(inst,it) in inforList.installment" :key="it+'t'">
                        <div :class="['item',installmentItemIndex===i?'itemActive':'']" @click="installmentItemIndex=i" v-for="(ins,i) in inst.values" :key="i+'n'" v-show="installmentIndex===it">
                            <span>{{installmentFilterA(details.d_style_price,ins.name,ins.rate)}}</span>
                            <p>{{installmentFilterB(details.d_style_price,ins.name,ins.rate)}}</p>
                            <i></i>
                        </div>
                    </div>
                </div>    
                <!--~~~~~~~~~~~~~~ 确认添加商品 ~~~~~~~~~~~~~~~~~~-->                                   
                <div class="footer" @click="getProductShopping">
                    <div class="addShopp">加入购物车</div>
                </div>                        
            </van-popup>            
        </div>        
        <!--~~~~~~~~~~~~~~ 统一查看面板 ~~~~~~~~~~~~~~~~~~-->                                                          
        <van-popup v-model="zengzhi">
            <div class="zengzhi">
                <van-icon name="cross" :style="zengzhiColor" @click="zengzhi=!zengzhi"/>
                <img v-for="(zzimg,zi) in zengzhiImgList[zengzhiIndex]" :key="zi" @click="zengzhi=!zengzhi" :src="zzimg" alt="">
            </div>
        </van-popup>                                 
        <!--~~~~~~~~~~~~~~ 面板信息列表 ~~~~~~~~~~~~~~~~~~-->       
        <div class="showPageList">
            <!--~~~~~~~~~~~~~~ 设备配置内容展示 ~~~~~~~~~~~~~~~~~~-->       
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
                        <p class="itemLine" v-for="(iconl,il) in iconAllList" :key="il">
                            <span class="name">{{iconl.d_icon_min_name}}</span>
                            <span class="val">{{iconl.d_icon_min_title}}</span>
                        </p>
                    </div>
                    <div class="footer">
                        <div class="achieve">完成</div>                    
                    </div>
                </div>     
            </van-popup>
            <!--~~~~~~~~~~~~~~ 赠品内容展示 ~~~~~~~~~~~~~~~~~~-->                   
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
                        <div class="itmeBlock" v-show="pi.pi_gift.length>0" v-for="(gifl,gl) in pi.pi_gift" :key="gl">
                            <div v-for="(gis,gs) in gifl.values" :key="gs">
                                <p class="name"><span>赠品</span></p>
                                <p class="val">{{gis.name}}</p>                                
                            </div>
                        </div>
                    </div>
                </div>     
            </van-popup>  
            <!--~~~~~~~~~~~~~~ 承诺服务内容展示 ~~~~~~~~~~~~~~~~~~-->                       
            <van-popup
            v-model="promiseListShow"
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
                        <div class="serverBlock" v-for="(prom,pr) in inforList.promise" :key="pr">
                            <p class="name"><van-icon name="passed"/><span>{{prom.name}}</span></p>
                            <p class="val">
                                {{prom.val}}
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
import shopp from '../../assets/js/shopp.js'
import { Button,Dialog,Row, Col,Icon,Tab, Tabs ,Tabbar, TabbarItem,Lazyload,PullRefresh,CountDown,Swipe, SwipeItem, Popup,ActionSheet,ImagePreview,Toast } from 'vant';
import { Server } from 'tls';
import { setTimeout } from 'timers';
export default {
    name:'product_detail',
    props:[],    
    data(){
        return{
            goShoppingList:[],
            show:false,
            index: 0,
            giftList:[],
            imgLsitShow:false,
            images: [
            ],   
            zengzhiColor:'color:#ddd',
            zengzhi:false,    
            zengzhiIndex:0,
            zengzhiImgList:[
                ["../../static/image/qita/意外保护.png"],
                ["../../static/image/qita/服务条款.png"],
                ["../../static/image/qita/常见问题.png"],
                ["../../static/image/qita/延迟保修.png"],
                []
            ],     
            iconListShow:false,
            giftListShow:false,
            promiseListShow:false,
            productListShow:false,
            installmentListShow:false,
            installmentIndex:0,
            installmentItemIndex:0,
            isSeckill:true,
            scrollIndexArr:[],
            scrollIndex:0,
            scrollTop2:0,
            scrollBtn2:true,
            imgList_isMove:true,
            heightImgList: [],
            heightIndex:0,
            iconAllList:[],
            inforList:{},
            staticList:{},
            pi:{},
            time:100000,
            details:'',
            version:'',
            color:'',
            name:'',
            set_meal:'',
            model:'',
            shoppingCount:0,
            shoppingCountAll:0,
            count:1
        }
    },
    filters: {
　　　　sliceString(value) {
            if(value.length<35){
                return value
            }else{
                return value.substring(0,35)+'...'
            }
　　　　},
        lineFeed(value) {
            let str = value.replace(/<br>/g," \r\n ")
            return str
　　　　}
　　},    
    components:{
    },
    beforeRouteUpdate (to, from, next) {
    },
　  watch: {
　  },     
    created(){

    },
    updated(){

    },
    mounted(){   
        this.init()
        this.initStaticData()     
        this.getOffsetTop()      
    },
    computed:{
      
    },    
    methods:{ 
        fomatFloat(num,n){   
            var f = parseFloat(num);
            if(isNaN(f)){
                return false;
            }   
            f = Math.round(num*Math.pow(10, n))/Math.pow(10, n); // n 幂   
            var s = f.toString();
            var rs = s.indexOf('.');
            //判定如果是整数，增加小数点再补0
            if(rs < 0){
                rs = s.length;
                s += '.'; 
            }
            while(s.length <= rs + n){
                s += '0';
            }
            return s;
        },        
        installmentFilterA(p,n,r){
            return (Number(p) / n + Number(p) * r / n).toFixed(2) + '元x' + n + '期'
        }, 
        installmentFilterB(p,n,r){
            return '手续费' + (Number(p) * r / n).toFixed(2) + '元/期起，费率' + (r * 100).toFixed(2) + '%起'
        },    
        ceiling2(){//页面滚动吸顶/吸底按钮
            var self = this
            var detail = self.$refs.detail
            var scrollHeight = detail.scrollHeight
            if(this.scrollTop2<scrollHeight/2){
                detail.scrollTop = scrollHeight
            }else{

                detail.scrollTop = 0
            }            
            self.scrollBtn2 = !self.scrollBtn2;
            
        },    
        paperScroll2(e){//页面滚动事件
            e.target!==undefined?e.stopPropagation():''
            // e.stopPropagation()
            let self = this
            let $this = e.srcElement || e
            self.scrollTop2 =  $this.scrollTop
        },      
        getOffsetTop(){//获得滚动高度
            // let doms = document.querySelectorAll('[data-scrollTab="scrollTab"]')
            let doms = document.getElementsByClassName('offsetTopIndex')
            setTimeout(() => {
            if(doms){
                for(let i=0;i<doms.length;i++){
                    let ot = doms[i].offsetTop
                    let oh = doms[i].offsetHeight
                    this.scrollIndexArr.push(ot)
                }       
            }                
            }, 1000);
        },  
        selectScrollTab(tab,t){//点击滚动到页面楼层
            let dom = this.$refs.detail
            dom.scrollTop = this.scrollIndexArr[t]>0?this.scrollIndexArr[t]-50:this.scrollIndexArr[t]
            this.scrollIndex = t
        },
        selectHeightImgPage(hl){//选择商品详情列表
            this.$refs.detail.scrollTop = this.scrollIndexArr[2]
            this.heightIndex = hl
        },
        selectServer(a,ai,b,bi){//选择服务
            let adom = this.pi.pi_server[ai].values
            let ale = adom.length
            let s = 0
            if(ale && ale>1){
                for(let i in adom){
                    this.pi.pi_server[ai].isSelect = true
                    if(this.pi.pi_server[ai].isSelect){
                            adom[i].checked = false
                            this.pi.pi_server[ai].values[bi].checked = !b
                    }else{
                        this.pi.pi_server[ai].isSelect = !a 
                    }
                    if(adom[i].checked === true){
                        s++
                    }
                    if(s===0){
                        this.pi.pi_server[ai].isSelect = false
                    }
                }                    
            }else{
                this.pi.pi_server[ai].isSelect = !a                   
                this.pi.pi_server[ai].values[bi].checked = !b                    
            }
        },
        openProductShopping(){//打开商品选择面板
            this.show = true
            this.productListShow = true            
        },
        goShopping(){//跳转至购物车
            this.$router.push({name:'goShopping',params:{}})
            // let sss = shopp(111111111)
        },
        getProductShopping(){//加入购物车
            // ls.setItem('shoppCount',)
            let count = this.count
            let p_info = this.details.p_info
            let pi = this.pi
            let url = this.HOST + '/detail/addShoppingInfor.php'
            this.$axios.post(url,{p_info,count,pi}).then(response=> {
                console.log(response.data)
                let hint = response.data.hint
                if(hint === 'ok'){
                    this.shoppingCountAll = response.data.shoppCountAll
                    Toast.success('添加成功');       
                    setTimeout(()=>{this.show = !this.show },800)
                }else{
                    Dialog.alert({
                    message: '商品超过最大购买限制'
                    }).then(() => {
                    // on close
                    });
                }
            }).catch(error=>{

            })             

        },      
        onChange(index) {//弹出图片轮播下标
            this.index = index;
        },    
        lookTopImg(imgList){//点击顶部轮播图放大
            this.images = imgList
            this.imgLsitShow = !this.imgLsitShow            
        },            
        lookDetailImg(imgList){//点击弹出框中商品详情左上角图片
            this.images = imgList
            this.imgLsitShow = !this.imgLsitShow            
        },
        lookReviewAll(){//点击查看更多评论
            ls.setItem('reviewType','B')                   
            this.$router.push({name:'reviewAll',params:this.name})
        },
        lookReview(data){//点击查看单条评论
            ls.setItem('reviewItem',data)
            ls.setItem('reviewType','C')       
            this.$router.push({name:'review',params:data})
        },
        lookIconList(){//点击查看设备参数信息表
            let iconInfo = this.name+' '+this.version
            let url = this.HOST + '/detail/getDetailIconAllList.php'               
            this.iconListShow = true
            if(iconInfo){
                this.$axios.post(url,iconInfo).then(response=> {
                    this.iconAllList = response.data.iconAllList
                }).catch(error=>{

                })
            }
        },
        lookGiftList(gi){//点击查看赠品列表
            if(this.pi.pi_gift[gi]){
                this.giftList = this.pi.pi_gift[gi].values
            }
            this.giftListShow = true
        },
        lookPromiseList(){//点击查看承诺列表
            this.promiseListShow = true
        },        
        overTime(){//倒计时结束
            this.isSeckill = false
        },
        lookInstallmentList(){//点击查看分期列表
            this.show = !this.show          
            this.installmentListShow = true
        },
        selectInstallmentTitle(is){//选择不同分期
            this.installmentIndex = is
            this.installmentItemIndex = 0
        },
        selectVersion(newVersion){//选择规格款式
            this.version = newVersion
            let newItemInfo = this.name+','+this.model+','+this.version+','+this.color
            this.init(newItemInfo)
        },
        selectColor(newColor){//选择颜色款式
            this.color = newColor  
            let newItemInfo = this.name+','+this.model+','+this.version+','+this.color
            this.init(newItemInfo)                      
        },
        minus(){//购买数量--
            this.count>1?this.count--:1
        },
        add(){//购买数量++
            this.count<this.details.d_style_MaxCount?this.count++:this.details.d_style_MaxCount
        },  
        closeShowPage(){//关闭下拉页面
            this.show = false
            this.iconListShow = false
            this.giftListShow = false
            this.promiseListShow = false
            this.productListShow = false
            this.installmentListShow = false            
        },
        showPopup(){//展开下拉页面
            this.show = true
            this.productListShow = true
        },      
        lookAddHeightImgList(src,length,suffix){//查看更多参数
            this.zengzhi=!this.zengzhi
            this.zengzhiIndex = 4
            let imgArr = []
            for(let i=0;i<length;i++){
                imgArr.push(src+(i+1)+suffix)
            }
            this.zengzhiImgList[this.zengzhiIndex] = imgArr

        },  
        init(newItemInfo){
            let itemInfo = null
            let set_meal = null

            if(newItemInfo && this.set_meal){
                itemInfo = newItemInfo
                set_meal = this.set_meal
            }else{
                itemInfo = ls.getItem('info')
                set_meal = ls.getItem('set_meal')
            }
            // 黑鲨游戏手机2 Pro 12GB+128GB 电鸣黑
                        console.log(set_meal)
            // let itemInfo = ls.getItem('info') || newItemInfo
            let routerName = ls.getItem('routerName')       
            let url2 = this.HOST + '/detail/getDetailInfoAll.php'            
            if(itemInfo){
                this.$axios.post(url2,itemInfo+','+set_meal).then(response=> {
                    // let valuesList = response.data
                    if(response.data){
   console.log(response.data)                        
                        let values = response.data                      
                        this.details = values.detail
                        this.count = this.details.d_style_MaxCount>this.count?this.count:this.details.d_style_MaxCount
                        this.version = values.detail.d_style_version
                        this.color = values.detail.d_style_color
                        this.name = values.detail.p_name
                        this.set_meal = values.detail.p_set_meal
                        this.model = values.detail.d_style_model
                        let stime = values.detail.d_seckill_time
                        this.time = Number(stime)
                        // this.time = 10000
                        let iconList = values.detail.d_style_iconList.replace(/\s*/g,"")                
                        let installment = values.detail.d_style_installment.replace(/\s*/g,"")                
                        let promise = values.detail.d_style_promise.replace(/\s*/g,"")    

                        this.inforList.colorList = values.colorList
                        this.inforList.imgsList = values.imgsList
                        this.inforList.versionList = values.versionList  
                        this.inforList.iconList = eval("("+iconList+")")
                        this.inforList.installment = eval("("+installment+")")
                        this.inforList.promise = eval("("+promise+")")

                    }
                }).catch(error=> {
                });    

                let url = this.HOST + '/detail/getProductInfo.php'                 
                this.$axios.post(url,itemInfo).then(response=> {
                    let values = response.data.product_info
                    let pi_server = values.pi_server.replace(/\s*/g,"")
                    let pi_choose = values.pi_choose.replace(/\s*/g,"")
                    let pi_gift = values.pi_gift.replace(/\s*/g,"")
                    let pi_set_meal = values.pi_set_meal.replace(/\s*/g,"")

                    values.pi_server= eval("("+pi_server+")")
                    values.pi_choose= eval("("+pi_choose+")")
                    values.pi_gift= eval("("+pi_gift+")")
                    values.pi_set_meal= eval("("+pi_set_meal+")")
                    this.pi = values

                }).catch(error=>{
                })
            }               
        },
        initStaticData(){
            let itemName = ls.getItem('name')
            let url = this.HOST + '/detail/getDetailReview.php'                 
            let url2 = this.HOST + '/detail/getDetailHeightImgs.php'                 
            let url3 = this.HOST + '/detail/getShoppingCountAll.php'                 
            if(itemName){
                this.$axios.post(url,itemName).then(response=> {
                        this.staticList.reviewList = response.data.reviewList
                        this.staticList.recommend = response.data.recommend     
                        this.staticList.foryouRecommend = response.data.foryouRecommend                 
                })
                .catch(error=> {
                });                     
                this.$axios.post(url2,itemName).then(response=> {
                    let values = response.data.heightAll;
                    let heightList = values.heheight_list.replace(/\s*/g,"")
                    this.heightImgList= eval("("+heightList+")")                                   
                })
                .catch(error=> {
                });  
                this.$axios.get(url3,{}).then(response=> {
                    this.shoppingCountAll = response.data.shoppingCountAll
                }).catch(error=>{

                })              
            }
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
        height: 100%;
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
            height: 50px;
            display: flex;
            padding: 10px 15px;
            align-items: center;
            justify-content: space-between;
            .scrollTab{
                width: 40%;
                transition: .5s;
                display: flex;
                justify-content: space-between;
                span{
                    font-size: .25rem;
                    position: relative;

                }
                .scrollTabActive{
                    color: #f56600;
                }
                .scrollTabActive:before{
                    content: '';
                    position: absolute;
                    width: 100%;
                    bottom: -5px;
                    border-bottom: 2px solid #f56600;
                }
            }
            a{
                i{
                    transition: .5s;
                    vertical-align: bottom;
                    width: 28px;
                    height: 27px;
                    display: inline-block;
                    overflow: hidden;
                    background: rgba(0, 0, 0, .6);
                    opacity: .9;
                    font-size: .32rem;
                    color: #fff;
                    border-radius: 50%;
                }
                i::before{
                    font-weight: 100;
                    vertical-align: middle;      
                }
                .topBtnHeheight{
                    background: transparent;
                    color: #000;
                }
            }
            .left{
                i::before{
                    padding-right: 2px;
                    padding-top: 2px;
                }
            }
            .right{
                i{                 
                    font-size: .38rem;        
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
            padding: 10px 0 20px;
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
            position: relative;
            justify-content: flex-start;
            background: #fafafa;
            overflow: hidden;
            margin: 0 auto;
            line-height: 36px;
            color: rgba(0,0,0,.87);
            border: 1px solid #eee;
            border-radius: 5px;
            padding: 0px 0px;
            font-size: .24rem;            
            .name{
                padding:0 15px;
                color: rgba(0,0,0,.54);  
            }
            .content{
                min-width: 75%;
                position: relative;
                text-align: left;
                div{
                width: 115%;
                position: absolute;
                    // line-height: 25px;
                    height: 100%;
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
                    padding-left: 15px;
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
                pointer-events: none;
                position: absolute;
                right: 15px;
                top:12px;
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
        .detail_installment{
            margin-bottom: 10px;
            .content{
                span:last-child::before{
                    content: ' / '
                }
            }
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
                height: 234px;
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
                    // height: 35px;
                    // overflow: hidden;
                    // text-overflow: ellipsis;
                    // padding: 0px 20px;
                    margin-top: -10px;
                    line-height: 18px;
                    white-space:pre-line;                            
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
            margin: 20px 0;
            a{
                color:#4e72a5;
                font-size: .33rem;
            }
            a:after{
                display: inline-block;
                content: '';
                vertical-align: middle;
                margin-left: 2px;
                transform: rotate(135deg);
                border-top:3.5px solid #4e72a5;
                border-left:3.5px solid #4e72a5;
                border-bottom:3.5px solid transparent;
                border-right: 3.5px solid transparent;
            }
        }
        .height_imgListALL{
            width: 100%;
            position: relative;
            top:0;
            left: 0;
            .height_title{
                display: flex;
                width: 100%;
                justify-content: space-around;
                font-size: .29rem;
                transition: .3s;
                border-top: 1px solid #ddd;
                border-bottom: 1px solid #ddd;
                span{
                    display: inline-block;
                    line-height: 48px;
                }
                .active{
                    color:#f56600;
                }
            }
            .heightTitleFixed{
                position: fixed;
                top:50px;
                z-index: 1;
                background: #fff;
                border-top: 0px solid #ddd;                
                box-shadow: 0 1px 4px 2px rgba(0, 0, 0, .2);
            }
            .heightImgPage{
                .heightImgList{   
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
                    .itemImg{
                        &>img{
                            width: 100%;
                            height: 100%;                        
                        }
                    }                                                        
                }
            }
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
                    left: 10px;
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
            .installmentList{
                margin-top: 160px;
                margin-bottom: 55px;
                padding: 0px 20px;                
                overflow-y: auto;                
                .title{
                    font-size: .25rem;
                    display: flex;
                    justify-content: space-around;
                    span{
                        width: 50%;
                        border:1px solid #eee;
                        display: inline-block;
                        line-height: 32px;
                    }
                    span:first-child{
                        border-top-left-radius: 16px;
                        border-bottom-left-radius: 16px;
                    }
                    span:last-child{
                        border-left: 0px solid #eee;
                        border-top-right-radius: 16px;
                        border-bottom-right-radius: 16px;                        
                    }
                    .installmentActive{
                        color:#f56600;
                        background: #fafafa;
                    }

                }
                .block{
                    padding: 0px 5px;                    
                    .item{
                        position: relative;
                        text-align: left;
                        padding: 15px 0px;
                        border-bottom: 1px solid #eee;
                        line-height: 25px;
                        span{
                            font-size: .29rem;
                        }
                        p{
                            font-size: .25rem;
                        }
                        i{
                            position: absolute;
                            border-radius: 49%;
                            top:30px;
                            right: 0;
                            width: 18px;
                            height: 17.5px;
                            border:1px solid #aaa;
                            display: flex;
                            justify-content: space-around;
                            align-items: center;
                        } 
                        i:before{
                            content: '';
                            position: absolute;
                            border-radius: 50%;
                            width: 12px;
                            height: 12px;
                            background: transparent;                        
                        }                     
                    }
                    .itemActive{
                        color: #f56600;       
                        i:before{
                            background: #f56600;                               
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
                    padding: 10px 0;
                    .name{
                        color: rgba(0,0,0,.54); 
                        width: 100px;
                        display: inline-block;
                        margin-right: 40px;
                    }
                    .val{
                        text-align: left;
                    }
                }
                .itmeBlock{
                    div{
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
        .zengzhi{
            width: 7.5rem;
            // height: auto;      
            i{
                position: fixed;
                display: block;
                color: #aaa;
                top:20px;
                right: 20px;
                font-size: .48rem;
                z-index: 100000;
            }       
            img{
                display: block;
                width: 100%;
                height: 100%;
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


