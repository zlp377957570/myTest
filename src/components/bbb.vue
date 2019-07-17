<template>
  <div class="hello">
      <div class="header">
        <div class="main_header">
          <div class="main_header_top">
            <div class="main_header_left">
              <img src="@/assets/image/icon/mi.png" alt="">
            </div>
            <div class="main_header_search">
              <van-icon name="search"/>搜索商品名称
            </div>
            <div class="main_header_right">
              <van-icon name="manager-o"/>   
            </div>
          </div>
          <div class="main_header_tab">
            <div class="contentBar">
              <div v-for="(item,i) in tabs" :key="i" class="itemBar" :index="i" @click="tabSelect(i)">
                <span :class="index==i?'active':''">{{item}}<i></i></span>
              </div>
            </div>       
            <div class="downBar" @click="openBar">
              <span :class="show?'openBar':''"></span>
            </div>     
            <div :class="show?'showContent showHeight':'showContent'">
              <p>全部</p>
              <div class="showBody">
                <span @click="headerBarSelect(key)" v-for="(val,key) in tabs" :key="key" :index="key" :class="index==key?'heHeight':''">
                  {{val}}                                                                                
                </span>
              </div>
            </div>
          </div>        
        </div>
      </div>
      <transition-group :class="['main_bodyer',{'noScorllLeft':noScorllLeft,'noScorllTop':noScorllTop}]" :name="fades" tag="div" style="left:0px">          
        <div v-for="(page,p) in tabs" :class="['bodys',{'zIndex':!show,'noScorllLeft':noScorllLeft,'noScorllTop':noScorllTop}]" :key="p" @touchstart="onTouchStart($event,p)" @scroll="paperScroll($event)">   
          <!-- <keep-alive :include="'page'+p"> -->
            <!-- <v-touch @swipeleft="onSwipeLeft($event)" @swiperight="onSwipeRight($event)"> -->
              <!-- <component :is="'page'+p"></component>   -->
              <div>
                <div class="a">{{p}}</div>
                <div class="b">3333333333333333333333333333</div>
                <div class="c">2222222222222222222222222222</div>
              </div>
            <!-- </v-touch> -->
          <!-- </keep-alive> -->
        </div>                                                     
      </transition-group>  
      <div class="footBar">
        <van-tabbar v-model="active"
          active-color="#07c160"
          inactive-color="#000"
        >
          <van-tabbar-item name="home" icon="home-o">标签</van-tabbar-item>
          <van-tabbar-item name="search" icon="search">标签</van-tabbar-item>
          <van-tabbar-item name="friends" icon="friends-o">标签</van-tabbar-item>
          <van-tabbar-item name="setting" icon="setting-o">标签</van-tabbar-item>
        </van-tabbar>       
      </div>    
  </div>
</template>

<script>
import { Button,Dialog,Row, Col,Icon,Tab, Tabs,Tabbar, TabbarItem  } from 'vant'
import { setTimeout, clearTimeout, setInterval, clearInterval } from 'timers'
import page0 from './page-list/page0'
import page1 from './page-list/page1'
import page2 from './page-list/page2'
import page3 from './page-list/page3'
import page4 from './page-list/page4'
import page5 from './page-list/page5'
import page6 from './page-list/page6'
import { ELOOP } from 'constants';
export default {
  name: 'HelloWorld',
  data () {
    return {
      index:0,
      tabs:['推荐','手机','智能','电视','笔记本','家电','生活周边'],
      show:false,
      noScorllTop:false,
      noScorllLeft:false,
      active:'home',
      scroll:'',
      fades:''
    }
  },
  components:{
    page0,page1,page2,page3,page4,page5,page6,
  },
  mounted(){
    // window.addEventListener('scroll', this.onScrollHeight)
    window.addEventListener('resize',this.setRemUnit)
  },
  methods:{
    setRemUnit(){
      var deviceWidth = document.documentElement.clientWidth;
      var deviceHeight = document.documentElement.clientHeight;
      

      console.log(deviceHeight)
      // if(deviceWidth > 750) deviceWidth = 750;
      var bodys = document.getElementsByClassName('main_bodyer')[0]
            console.log(bodys)
            // bodys.style.height = deviceHeight + 'px'
      // document.documentElement.style.fontSize = deviceWidth / 7.5 + 'px';        
    },    
    onTouchStart(a,p){
      var self = this
      var $i = document.querySelector('.itemBar:nth-child('+(p+1)+') .active i')
      var offsetWidth = document.documentElement.clientWidth
      
      var width = offsetWidth/2
      var _this = a.currentTarget
      var main = _this.parentNode
      var lefts = main.style.left
        var a =a.touches[0]
        var startLeft = a.clientX
        var startTop = a.clientY
        var del = 0
        setInterval(()=>{
           del++
        },10)
      _this.ontouchmove = function(b){
        var b = b.touches[0]
        var clientX = b.clientX
        var clientY = b.clientY
        if(self.noScorllLeft===false){
          if(clientX-startLeft>10 || clientX-startLeft<-10){
             self.noScorllTop = true
            if(p==0){
              if((clientX-startLeft)<0){
                main.style.left = Number(lefts.slice(0,-2))+(Number(clientX-startLeft))+'px'
                $i.style.left = -(clientX-startLeft)/8+'px'                  
              }
            }else if(p==6){
              if((clientX-startLeft)>0){
                main.style.left = Number(lefts.slice(0,-2))+(Number(clientX-startLeft))+'px'
                $i.style.left = -(clientX-startLeft)/8+'px'                  
              }
            }else{
                main.style.left = Number(lefts.slice(0,-2))+(Number(clientX-startLeft))+'px'
                $i.style.left = -(clientX-startLeft)/8+'px'                     
            }
          }else{
            if(self.noScorllTop===false){
              if(clientY-startTop>10 || clientY-startTop<-10){
                self.noScorllLeft = true
               
              }
            }            
          }
        }else{
          self.noScorllLeft = true
        }

 
        _this.ontouchend = function(c){
          clearInterval()
          main.style.left = lefts
          if(self.noScorllLeft===false){
            var c = c.changedTouches[0]
            var endLeft = c.clientX
            var offWidth = endLeft-startLeft
            main.style.left = lefts
            if(offWidth>0){
              if(Number(offWidth)>=width || Number(offWidth)>=width/4 && del<15){
                  p>0?p:0
                  p>0?p--:0
                  self.tabSelect(p)
                }
            }
            if(offWidth<0){
              if(-Number(offWidth)>=width || -Number(offWidth)>=width/4 && del<15){
                p<6?p:6
                p<6?p++:p
                self.tabSelect(p)
              }            
            }
            $i.style.left = 0+'px'              
          } 
          self.noScorllTop = false
          self.noScorllLeft = false               
        }
      } 
    },
    add(){
      let url = this.HOST + '/getMaindata.php'
      Dialog.alert({
        title: '标题',
        message: '代码是写出来给人看的，附带能在机器上运行'
      }).then(() => {
          this.$axios.get(url, {})
          .then(response=> {
            console.log(response.data.products)
            let list = response.data.products;
          })
          .catch(error=> {
          });   
      }); 
    },
    openBar(){
      this.show = !this.show
    },
    headerBarSelect(e){
      var self = this
      // setTimeout(()=>{
      //   },500)  
      setTimeout(()=>{
        self.show = !self.show      
        },200)
        self.tabSelect(e)
    
    },
    tabSelect(e){
      let $this = document.getElementsByClassName('itemBar')[e]
      var $main = document.getElementsByClassName('main_bodyer')[0]
      console.log(this.$route.meta.isLogin)
      let $parent = $this.parentNode

      let $index = $this.getAttribute('index')
      let width = $this.offsetWidth
      let clientWidth = document.documentElement.clientWidth

      console.log('width:'+width)
      if($index>this.index){
        this.fades = "lefts"
        if($index>3){
          setTimeout(()=>{
            $parent.scrollLeft = width*($index+1-this.index)
          },200)
        }
      }else{
        this.fades = "rights"
        if($index<4){
          setTimeout(()=>{
            $parent.scrollLeft = width*-(this.index-$index)
          },200)
        }        
      }
      console.log('$index:'+$index)
      console.log('this.index:'+this.index)

      $main.style.left = -clientWidth* $index+'px'      
      this.index = $index
    },
    paperScroll(e){
            let $this = e.currentTarget  
            // let $this = e.target  
            let scollTop = $this.scrollTop
                //  console.log(scollTop)   
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>
.hello{
  margin:0 auto;
  color: #333333;
  overflow: hidden;
  height: 100%;
  font-size: .32rem;
	i{
    font-size: 0.36rem;
  }
  .header{
    position: relative;
    // margin-bottom:74px;
    height: 74px;
    background: red;
    z-index: 100;
    .main_header{
      width: 375px;
      position: fixed;
      top:0px;
      left: 0px;
      z-index:100;
      .main_header_top{
        display: flex;
        justify-content: space-between;
        -webkit-box-align: center;
        padding: 0 15px;
        align-items: center;
        background: #f2f2f2;
        color:#666;
        height: 44px;
        .main_header_left{
          img{
            width: 25px;
            height: 16px;
          }
        }
        .main_header_search{
          width: 268px;
          line-height: 32px;
          padding:0 10px;
          text-align: left;
          background: #fff;
          border:1px solid #e5e5e5;
          color: rgba(0,0,0,.3);
          i{
            vertical-align: -2px;
            padding-right:5px;
          }
        }
        .main_header_right{
          i{
            vertical-align: -2px;
            font-size: 0.42rem;
          }
        }    
      }
      .main_header_tab{
        font-size: 0.28rem;
        color: #747474;
        position: relative;
        background: #f2f2f2;
        height: 30px;
        // overflow: hidden;
        line-height: 24px;
        .contentBar{
          width: 332px;
          overflow-x: auto;
          text-align: left;
          white-space: nowrap;
          height: 30px;
          .itemBar{
            display: inline-block;
            padding:0 12px;
            height: 30px;
            span{
              position: relative;
              display: inline-block;
            }
            .active{
              color: #FF6B00;
              i{
              width: 100%;
              display: inline-block;
              position: absolute;
              height: 0px;
              border-bottom: 2px solid #FF6B00;
              top: 27px;
              padding: 0 12px;
              left: 0px;     
              }
            }
          }
        }
        .downBar{
          line-height: 30px;
          padding:0 15px;
          background: #f2f2f2;
          box-shadow:-15px -5px 12px 0 #f2f2f2;
          position: absolute;
          top:0;
          right: 0;
          z-index: 101;
          span{
            vertical-align: 5px;
            display: inline-block;
            width: 8px;
            height: 8px;
            border:1px solid #b0b0b0;
            border-top:none;
            border-right:none;
            transform: rotate(-45deg);
            transition:all .3s;
          }
          .openBar{
            transform: rotate(135deg);   
            vertical-align: 0px;       
          }
        }
        .showContent{
          position: absolute;
          overflow: hidden;
          padding-left: 13px;
          top:0px;
          height: 0px;
          background: #f2f2f2;
          transition:all .1s;
          opacity: 0;
          p{
            margin-top:15px;
            text-align: left;
            color: #333;
            font-size: 0.3rem;
          }
          .showBody{
            margin-top:5px;
            width: 100%;
            height: 83px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            span{
              width: 80px;
              line-height: 29px;
              border: 1px solid #eee;
              border-radius: 4px;
              color:#333;
              background: #fff;
              margin-right: 10px;
            }
            .heHeight{
              border: 1px solid #ff6700;
              color:#ff6700;
              background: #fde0d5;
            }
          }
        }
        .showHeight{
          opacity: 1;
          z-index: 100;
          transition:all .1s;
          height: 130px;    
        }
      }    
    }    
  }
  .main_bodyer{
    z-index: 99;
    width: 2625px;
    height: auto;
    // transition: all .5s;
    overflow: hidden;
    position: relative;
    display: flex;
    flex-wrap: nowrap;
    top:74px;
    left: 0px;
    .bodys{
      float: left;
      background: pink;
      position: relative;
      padding-bottom: 10px;
      left: 0px;
      top:0px;
      width: 100%;
      height: 500px;  
      overflow-y: scroll;
      -webkit-overflow-scrolling: touch;
      transition: all .3s;   
      border:2px solid red;
      div{
        width: 100%;
        height: 100%;  
        // overflow: hidden;
        position: relative;
        background: lightblue;   
        .a{
          width: 100%;
          height: 1500px;  
          // position: absolute;
          overflow: hidden;
          background: lightsalmon;            
        }  
        .b{
          // position: absolute;
          // bottom: 0;
          width: 100%;
          height: 1500px;  
          overflow: hidden;
          background: blueviolet;                 
        }  
        .c{
          // position: absolute;
          bottom: 0;
          width: 100%;
          height: 1500px;  
          overflow: hidden;
          background: aqua;                 
        }          
      }
    }
    .noScorllTop{
      overflow-y: hidden;
    }
    .zindex{
      z-index: 99;
    }
    .lefts-enter{
      @keyframes onLeft{
        0%{
          left:750px;
        }
        100%{
          left:0px;
        }
      }      
    }
    .lefts-enter-active{
      animation:onLeft .5s 1 ease-in-out;
    }
    .rights-enter{
      @keyframes onRight{
        0%{
          left:-750px;
        }
        100%{
          left:0px;
        }
      }        
    }
    .rights-enter-active{
      animation:onRight .5s 1 ease-in-out;
    }    

  
  }
  .noScorllLeft{
    overflow-x: hidden;
  }
  .footBar{
    width: 100%;
    // height: 0px;
    // margin-top:0px;
    background: red;
    position: relative;
    // z-index: 100;
  } 
}
</style>
