<template>
    <div class="goShopping">
        <detailHead :title="'购物车'"></detailHead>
        <div class="shopping">
            <div class="shopp">
                <div class="content" v-for="(spb,sp) in sl" :key="sp">
                    <div class="only">
                        <div class="select" @click="itemShoppingSelect(sp,spb.si_checked)">
                            <van-icon name="checked" :class="spb.si_checked?'':'selectCheck'"/>
                        </div>
                        <div class="image">
                            <img :src="spb.si_only.d_style_src" alt="">
                        </div>
                        <div class="info">
                            <div class="title"><span>{{spb.si_only.p_name+' '+spb.si_only.d_style_version}}</span></div>
                            <div class="subTitle"><span>{{spb.si_only.d_style_color+'&nbsp;&nbsp;'+spb.si_only.d_style_disk}}</span></div>
                            <div class="price"><span>{{spb.si_only.d_style_price}}</span><s v-if="spb.si_only.d_style_original_price!=0">{{spb.si_only.d_style_original_price}}</s></div>
                        </div>
                        <div class="addCount">
                            <div class="compute">
                                <span @click="minusCount(sp)" :class="[spb.si_count<2?'disabled':'']">－</span>
                                <span class="val" :v-model="count">{{spb.si_count}}</span>
                                <span @click="addCount(sp)" :class="[spb.si_count<spb.si_only.d_style_MaxCount&&spb.si_count>=1?'':'disabled']">＋</span>
                            </div>
                        </div>
                    </div>  
                    <div class="subjoin" v-show="spb.si_checked">
                        <div class="addBuy"></div>
                        <div class="server"  @click="lookServerShow(sp)" v-for="(ser,s) in spb.si_server" :key="'ser-'+ s" v-show="!ser.isSelect">
                            <div class="title">
                                服务
                            </div>
                            <div class="name">
                                {{ser.name}}
                            </div>
                            <div class="price">
                                <span>{{ser.price}}</span>
                            </div>
                            <div class="setSelect">
                                选购
                            </div>
                        </div>
                        <div class="serverChecked" v-for="(ser,s) in spb.si_server" :key="'ser+'+ s" v-show="ser.isSelect">
                            <div class="serverItem" @touchstart="serverTouchStart($event,sp,s,d,sed.checked)" v-for="(sed,d) in ser.values" :key="'sed+'+ d" v-show="sed.checked">
                                <div class="src">
                                    <img :src="ser.src" alt="">
                                </div>
                                <div class="title">
                                    <p>{{sed.name+'&nbsp;&nbsp; x'}}{{ser.count}}</p>
                                    <span>{{sed.price}}</span>
                                </div>
                                <div class="setSelect" @click="lookServerShow(sp)" v-show="ser.values.length>1">
                                    重选
                                </div>                            
                            </div>                               
                        </div>
                        <div class="gift" v-for="(gif,gi) in spb.si_gift" :key="gi">
                            <div class="itemGift" v-for="(itmgif,ig) in gif.values" :key="ig" v-show="itmgif.checked">
                                <div class="src">
                                    <img :src="itmgif.src" alt="">
                                </div>
                                <div class="title">
                                    [赠品]{{itmgif.name+'&nbsp;&nbsp; x'}}{{itmgif.count}}
                                </div>
                                <div class="setSelect" @click="lookGiftShow(sp,gi,ig)" v-show="gif.values.length>1">
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
                            <div class="serverList showPopupPage">
                                <div class="close" @click="closeShowPage"><van-icon name="cross"/></div>
                                <div class="header">
                                    <span>购买服务</span>
                                </div>    
                                <div class="content">
                                    <div class="accident_protection" v-for="(pis,pi) in cpl[sIndex].si_server" :key="pi" v-show="!sl[sIndex].si_server[pi].isSelect || sl[sIndex].si_server[pi].values.length>1">
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
                                <div class="footer">
                                    <div class="selects">
                                        <span v-if="serverCount>0" class="selected">已选{{serverCount}}种服务</span>
                                        <span v-if="serverCount==0" class="select">请选择服务</span>
                                    </div>
                                    <div class="affirm" @click="serverAffirm">确认</div>                    
                                </div>
                            </div>     
                        </van-popup>
                        <van-popup
                        v-model="giftListShow"
                        position="bottom"
                        :style="{ height: '48%' }"
                        >       
                            <div class="giftPageShow showPopupPage">
                                <div class="close" @click="closeShowPage"><van-icon name="cross"/></div>
                                <div class="header">
                                    <span>已符合满赠条件，可选以下任一赠品</span>
                                </div>    
                                <div class="content">
                                    <div class="giftBlock" v-for="(gift,gf) in cpl[sIndex].si_gift" :key="gf" v-show="gf===giftIndex">
                                        <div class="block" v-for="(gis,gs) in gift.values" :key="gs" @click="selectGift(sp,gf,gs,gis.checked)">
                                            <div class="src">
                                                <img :src="gis.src" alt="">
                                            </div>
                                            <div class="select">
                                                <van-icon name="checked" :class="gis.checked?'':'selectCheck'"/>
                                            </div>                                            
                                            <div class="title">
                                                {{gis.name}}
                                            </div>
                                            <div class="price">
                                                <span>{{gis.price}}</span><s>{{gis.original_price}}</s>
                                            </div>
                                        </div>                                     
                                    </div>                                    
                                </div>
                                <div class="footer">
                                    <div class="affirm" @click="giftAffirm">确定</div>                    
                                </div>
                            </div>     
                        </van-popup>                        
                    </div>
                </div>
                <van-popup v-model="zengzhi"><div class="zengzhi"><van-icon name="cross" :style="zengzhiColor" @click="zengzhi=!zengzhi"/><img @click="zengzhi=!zengzhi" :src="zengzhiImgList[zengzhiIndex]" alt=""></div></van-popup>
            </div>
            <div class="footerBar">
                <div class="select" @click="selectCheckedAll">
                    <van-icon name="checked" :class="checkedAll?'':'selectCheck'"/>
                    <span>全选</span>
                </div>
                <div class="total">
                    合计：<span>{{priceAll.toFixed(2)}}</span>
                </div>
                <div class="computeCount" :style="countAll<1?{'background':'#aaa'}:''">
                    结算({{countAll}})  
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import ls from '../../assets/js/ls.js'
import { Button,Dialog,Row, Col,Icon,Tab, Tabs ,Tabbar, TabbarItem,Lazyload,PullRefresh,CountDown,Swipe, SwipeItem, Popup,ActionSheet,ImagePreview,Toast } from 'vant';
import detailHead from './detailHead.vue'
import { setTimeout, clearTimeout } from 'timers';
export default {
    name:'goShopping',
    data(){
        return{
            serverListShow:false,
            giftListShow:false,
            zengzhiColor:'color:#ddd',
            zengzhi:false,    
            zengzhiIndex:0,
            zengzhiImgList:[
                "../../static/image/qita/意外保护.png",
                "../../static/image/qita/服务条款.png",
                "../../static/image/qita/常见问题.png",
                "../../static/image/qita/延迟保修.png"
            ],         
            serverCount:0,  
            cpl:{},  
            sIndex:0,
            giftIndex:0,
            count:1,
            countAll:0,
            priceAll:0,
            checkedAll:false,
            isA:0,
            isB:0,            
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
        setTimeout(()=>{//暂时使用timeout,得用pormeise优化
            this.sumAllChecked()    
        },500)
    },
    updated(){
    },
    methods:{
        serverTouchStart(a,sp,ai,bi,status){//手指长按服务
            a.stopPropagation()
            let $this = a.currentTarget
            let touchEvent = setTimeout(()=>{
                touchEvent = 0
                clearTimeout(touchEvent)
                Dialog.confirm({
                // title: '标题',
                message: '是否删除该服务？'
                }).then(() => {
                    this.sl[sp].si_server[ai].isSelect = !status
                    this.sl[sp].si_server[ai].values[bi].checked = !status
                    this.cpl[sp].si_server = JSON.parse(JSON.stringify(this.sl[sp].si_server))    
                    this.sumAllChecked()                    
                }).catch(()=>{
                    
                })               

            },500)
            $this.ontouchend = function(){
                clearTimeout(touchEvent)
                // console.log(touchEvent)
                if(touchEvent!=0){
                }
            }            
        },
        giftAffirm(){//确认选择赠品
            this.sl[this.sIndex].si_gift = JSON.parse(JSON.stringify(this.cpl[this.sIndex].si_gift))
            this.giftListShow = false           
            Toast({
                message:'ok',
                duration:300
            });  
            this.sumAllChecked()             
        },
        serverAffirm(){//确认选择服务
            this.sl[this.sIndex].si_server = JSON.parse(JSON.stringify(this.cpl[this.sIndex].si_server))
            this.serverListShow = false        
            Toast({
                message:'ok',
                duration:300
            });  
            this.sumAllChecked()             
        },
        selectGift(sp,gf,gs,checked){//选择赠品
            let adom = this.cpl[sp].si_gift[gf].values
            let ale = adom.length            
            if(ale && ale>1){
                for(let i=0;i<ale;i++){
                    this.cpl[sp].si_gift[gf].values[i].checked = false                 
                }
                this.cpl[sp].si_gift[gf].values[gs].checked = true                  
            }else{
                this.cpl[sp].si_gift[gf].values[gs].checked = true                  
            }
        },
        selectServer(a,ai,b,bi){//选择服务
            let sp = this.sIndex
            let adom = this.cpl[sp].si_server[ai].values
            let ale = adom.length
            let s = 0
            if(ale && ale>1){
                    this.cpl[sp].si_server[ai].isSelect = true
                    if(this.cpl[sp].si_server[ai].isSelect){
                        if(bi===0){
                            this.cpl[sp].si_server[ai].values[bi].checked = !b
                            this.cpl[sp].si_server[ai].values[1].checked = false
                        }else{
                            this.cpl[sp].si_server[ai].values[bi].checked = !b
                            this.cpl[sp].si_server[ai].values[0].checked = false                            
                        }                      

                    }else{
                        this.cpl[sp].si_server[ai].isSelect = !a 
                    }
                    for(let j in adom){
                        if(adom[j].checked === true){
                            s++
                        }
                    }
                    if(s===0){
                        this.cpl[sp].si_server[ai].isSelect = false
                    }                
                   
            }else{
                this.cpl[sp].si_server[ai].isSelect = !a                   
                this.cpl[sp].si_server[ai].values[bi].checked = !b                    
            }

            if(this.cpl[sp].si_server[0].values.length>1 && this.cpl[sp].si_server[0].values[0].checked || this.cpl[sp].si_server[0].values[1].checked){
                this.isA = 1
            }else{
                this.isA = 0
            }
            if(this.cpl[sp].si_server[1].values.length<2 && this.cpl[sp].si_server[1].values[0].checked && !this.sl[sp].si_server[1].values[0].checked){
                this.isB = 1
            }else{
                this.isB = 0        
            }
                                
            this.serverCount = this.isA + this.isB
        },      
        lookGiftShow(sp,gi){//打开赠品面板
            this.sIndex = sp          
            this.giftIndex = gi          
            this.cpl[sp].si_gift = JSON.parse(JSON.stringify(this.sl[sp].si_gift))              
            this.giftListShow = true
        },               
        lookServerShow(sp){//打开服务面板
            this.sIndex = sp
            this.cpl[sp].si_server = JSON.parse(JSON.stringify(this.sl[sp].si_server))
            this.serverListShow = true

            if(this.cpl[sp].si_server[0].values.length>1 && this.cpl[sp].si_server[0].values[0].checked || this.cpl[sp].si_server[0].values[1].checked){
                this.isA = 1
            }else{
                this.isA = 0
            }
            if(this.cpl[sp].si_server[1].values.length<2 && this.cpl[sp].si_server[1].values[0].checked && !this.sl[sp].si_server[1].values[0].checked){
                this.isB = 1
            }else{
                this.isB = 0        
            }
            this.serverCount = this.isA + this.isB
        },
        closeShowPage(){//关闭下拉页面
            this.serverListShow = false
            this.giftListShow = false
        },    
        itemShoppingSelect(sp,selected){//单选商品
            this.sl[sp].si_checked = !this.sl[sp].si_checked
            // this.sumOnlyCheck(this.sl[sp])
            this.sumAllChecked()       
        },
        sumOnlyCheck(obj){//单件商品的选中状态
            console.log(obj)
            let n = 0
            for(let i in obj){
                if(obj[i].constructor === Array && obj[i].length>0){    
                    for(let k in obj[i]){
                        for(let j in obj[i][k].values){
                            // obj[i][k].values[j].checked = !obj[i][k].values[j].checked
                        }
                        
                    }           
                }                
            }
            // return obj    
            this.sumAllChecked()        
        },
        selectCheckedAll(){//全选商品
            this.checkedAll = !this.checkedAll
            let obj = this.sl        
            if(this.checkedAll){
                for(let i in obj){
                    obj[i].si_checked = true
                }                
                this.sumAllChecked()                
            }else{
                this.sumAllCheck(obj)
            }
        },     
        sumAllCheck(obj){//全部取消选中商品      
            for(let i in obj){
                obj[i].si_checked = false
            }
            this.sumAllChecked()               
        },
        sumAllChecked(){//全部商品选中
            let obj = this.sl
            let n = 0
            let p = 0
            let arr = []
            let sum = []
            let sumPrice = []
            for(let a in obj){
                let num = []
                let price = []
                if(obj[a].si_checked){
                    arr.push(Number(obj[a].si_count))
                    for(let b in obj[a]){
                        if(obj[a][b].constructor === Array && obj[a][b].length>0){//同上      
                            for(let k in obj[a][b]){
                                for(let j in obj[a][b][k].values){
                                    if(obj[a][b][k].values[j].checked){
                                        num.push(1)
                                        price.push(obj[a][b][k].values[j].price)
                                    }
                                }
                                
                            }           
                        }                
                    }
                    sum.push(num)  
                    sumPrice.push(price)                  
                }
            } 
            if(arr.length>0){
                for(let v in arr){
                    for(let s in sum[v]){
                        n += arr[v]*sum[v][s]
                        p += arr[v]*sumPrice[v][s]
                    }
                }                
                this.countAll = n 
                this.priceAll = p 
            }else{
                this.countAll = 0
                this.priceAll = 0                 
            }      
        },          
        minusCount(sp){//购买数量--
            this.sl[sp].si_count>1?this.sl[sp].si_count--:1
            let count = this.sl[sp].si_count
            let obj = this.sl[sp]
            this.findMod(obj,count);
            this.sumAllChecked()             
        },     
        addCount(sp){//购买数量++
            this.sl[sp].si_count<this.sl[sp].si_only.d_style_MaxCount?this.sl[sp].si_count++:this.sl[sp].si_only.d_style_MaxCount
            let count = this.sl[sp].si_count
            let obj = this.sl[sp]
            this.findMod(obj,count);
            this.sumAllChecked() 
        },
        findMod(obj,count){//count加减计算方法
            for(let key in obj){
                if(obj[key].constructor === Array && obj[key].length>0){//同上      
                    for(let k in obj[key]){
                        if(obj[key][k].count){
                            obj[key][k].count = count
                        }
                        for(let j in obj[key][k].values){
                            obj[key][k].values[j].count = count
                        }
                        
                    }           
                }                
            }
            return obj
        },                
        init(){
            let url = this.HOST + '/detail/goShopping.php'
            this.$axios.post(url,{}).then(response=> {
                console.log(response.data)
                this.sl = response.data.shoppingList    
                this.cpl = JSON.parse(JSON.stringify(response.data.shoppingList))      
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
            font-size: .25rem;         
            .shopp{
                background: red;
                height: 1000px;
                .content:not(:first-child){
                    border-top: 1px solid #eee;
                }
                .content{
                    border-bottom: 5px solid #fafafa;
                    .only{
                        display: flex;
                        padding: 7px 7px;
                        align-items: center;
                        position: relative;
                        .select{
                            padding: 25px 7px;
                            i{                            
                                color: #f56600;                                
                                border-radius: 50%;
                                font-size: .42rem;
                            }
                            .selectCheck{
                                border:1px solid #ddd;
                                border-radius: 50%;                                
                                font-size: .38rem;                                
                                color: #fff;
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
                               font-size: .29rem;
                            }
                            .subTitle{
                                font-size: .1rem;                                
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
                        font-size: .1rem;
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
                            .serverItem{
                                position: relative;
                                display: flex;
                                align-items: center;
                                padding: 10px 50px 10px 35px;
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
                                    text-align: left;
                                    line-height: 20px;
                                    p{
                                        color: #777;
                                    }
                                    span{
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
                                        display: block;
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
                            .giftBlock{
                                position: relative;
                                display: flex;
                                align-items: center;
                                // padding: 10px 20px 10px 35px;
                                // background: #fafafa;                                
                                .block{
                                    .src{
                                        padding: 0 15px;
                                        img{
                                            border-radius: 6px;
                                            border: 1px solid #ccc;
                                            width: 80px;
                                            height: 80px;
                                            display: block;
                                        }
                                    }
                                    .title{
                                        font-size: .22rem;
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
                    .giftPageShow{                       
                        .close{
                            padding: 5px 10px 0px 0px;   
                            position: fixed;
                            right: 0;
                            z-index: 100;
                            font-weight: 100;
                            font-size: .36rem;    
                            color: #999;
                            i{
                                vertical-align: bottom;
                            } 
                        }               
                        .header{
                            line-height: 80px; 
                            span{
                                font-weight: 550;
                                border-bottom: 1px solid #fff;
                                font-size: .32rem;
                            }
                        }
                        .content{
                            padding: 15px 0px 10px;                
                            .giftBlock{
                                position: relative;
                                display: flex;
                                align-items: center;                               
                                .block{
                                    width: 140px;       
                                    position: relative;                          
                                    .src{
                                        padding: 0 0px;
                                        img{
                                            border-radius: 6px;
                                            border: 1px solid #fff;
                                            width: 130px;
                                            height: 130px;
                                            display: block;
                                        }
                                    }
                                    .select{
                                        position: absolute;
                                        padding: 20px;
                                        top: 80px;
                                        right: 0px;
                                        i{                            
                                            color: #f56600;                                
                                            border-radius: 50%;
                                            font-size: .42rem;
                                        }
                                        .selectCheck{
                                            border:1px solid #ddd;
                                            border-radius: 50%;                                
                                            font-size: .38rem;                                
                                            color: #fff;
                                        }
                                    }                                    
                                    .title{
                                        padding: 5px 10px;
                                        width: 80%;
                                        text-align: center;
                                        font-size: .22rem;
                                        overflow: hidden;
                                        text-overflow: ellipsis;
                                        white-space: nowrap;
                                        line-height: 30px;
                                    }
                                    .price{
                                        padding-left: 25%;
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
                                            padding-left: 5px;
                                            color: #888;
                                            font-size: .1rem;
                                        }
                                        s::before{
                                            content: '\A5';
                                            font-size: .1rem;
                                        }
                                    }
                                }
                            }
                        }
                        .footer{
                            .affirm{
                                width: 100%;  
                                border-top:0px solid #999;                        
                            }
                        }                        
                    }                                     
                }
                .zengzhi{
                    width: 7.5rem;   
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
            }
            .footerBar{
                position: fixed;
                bottom: 0;
                left: 0;
                width: 100%;
                height: 50px;
                background: #f2f2f2;
                color: #333;  
                font-size: .32rem;
                z-index: 1000;
                display: flex;
                justify-content: space-between;
                align-items: center;      
                border-top: 1px solid #ccc;
                border-bottom: 1px solid #ccc;                    
                .select{
                    padding: 25px 15px;
                    i{                            
                        color: #f56600;                                
                        border-radius: 50%;
                        font-size: .42rem;
                        vertical-align: -3px;                        
                    }
                    span{

                        padding-left: 5px;
                    }
                    .selectCheck{
                        border:1px solid #ddd;
                        border-radius: 50%;                                
                        font-size: .38rem;                                
                        color: #fff;
                    }
                }
                .total{
                    padding-right: 10px;
                    span{
                        color: #f56600;
                    }
                    span::before{
                        content: '\A5';
                        font-size: .1rem;
                        vertical-align: 3px;
                    }                    
                }
                .computeCount{
                    line-height: 50px;
                    padding: 0 40px;
                    background: #f56600;
                    color: #fff; 
                }
            }
        }
    }
</style>

