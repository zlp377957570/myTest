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
            <div class="contentBar" @change="onScrollWidth($event)">
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
      <transition-group class="main_bodyer" :name="fades" tag="div">          
        <div v-for="(page,p) in tabs" :class="show?'bodys':'bodys zindex'" :key="p" v-show="index==p"  @touchstart="onTouchStart($event,p)">   
          <keep-alive :include="'page'+p">
            <!-- <v-touch @swipeleft="onSwipeLeft($event)" @swiperight="onSwipeRight($event)"> -->
              <component :is="'page'+p"></component>  
            <!-- </v-touch> -->
          </keep-alive>
        </div>                                                     
      </transition-group>  
  </div>
</template>

<script>
import { Button,Dialog,Row, Col,Icon,Tab, Tabs  } from 'vant'
import { setTimeout } from 'timers'
import page0 from './page-list/page0'
import page1 from './page-list/page1'
import page2 from './page-list/page2'
import page3 from './page-list/page3'
import page4 from './page-list/page4'
import page5 from './page-list/page5'
import page6 from './page-list/page6'
export default {
  name: 'HelloWorld',
  data () {
    return {
      index:0,
      tabs:['推荐','手机','智能','电视','笔记本','家电','生活周边'],
      show:false,
      scroll:'',
      fades:''
    }
  },
  components:{
    page0,page1,page2,page3,page4,page5,page6,
  },
  mounted(){
    window.addEventListener('scroll', this.onScrollWidth)
  },
  methods:{
    onTouchStart(a,p){
      var self = this
      var $i = document.querySelector('.itemBar:nth-child('+(p+1)+') .active i')
      var offsetWidth = document.body.offsetWidth
      var width = offsetWidth/2
      var _this = a.currentTarget
        var a =a.touches[0]
        var startLeft = a.clientX
      _this.ontouchmove = function(b){
        var b = b.touches[0]
        var clientX = b.clientX
         _this.style.left = clientX-startLeft+'px'
         $i.style.left = -(clientX-startLeft)/8+'px'
        _this.ontouchend = function(c){
          var c = c.changedTouches[0]
          var endLeft = c.clientX
          var offWidth = endLeft-startLeft
          if(offWidth>0){
            if(Number(offWidth)>=width){
                p>0?p:0
                p>0?p--:0
                self.tabSelect(p)
              }
          }
          if(offWidth<0){
            if(-Number(offWidth)>=width){
              p<6?p:6
              p<6?p++:p
              self.tabSelect(p)
            }            
          }
          _this.style.left = 0+'px'
         $i.style.left = 0+'px'          
        }
      } 
    },
    // onSwipeLeft(event){
    //   var self = this
    //   var e = self.index<6?self.index:6
    //   e<6?e++:e
    //   self.tabSelect(e)
    //   this.index = e
    // },
    // onSwipeRight(){
    //   var self = this 
    //   var e = self.index==0?0:self.index-1
    //   // console.log(e)
    //   self.tabSelect(e)
    //   this.index = e             
    // },
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
      setTimeout(()=>{
        self.show = !self.show      
      },200)
        self.tabSelect(e)
    },
    tabSelect(e){
      let $this = document.getElementsByClassName('itemBar')[e]
      console.log(this.$route.meta.isLogin)
      let $parent = $this.parentNode
      let $child = $this.children
      console.log($child)
      let $index = $this.getAttribute('index')
      let width = $this.offsetWidth
      let scrollLeft =$parent.scrollLeft
      console.log('$index:'+$index)
      console.log('e:'+e)
      if($index>this.index){
        this.fades = "lefts"
        if($index>3){
          setTimeout(()=>{
            console.log($index)
            console.log(this.index)
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
      this.index = $index
    },
    onScrollWidth(e){
      let $this = e.currentTarget  
      this.scroll = $this.scrollLeft;
      $this.scroll =  document.body.scrollTop;
            console.log($this)
            console.log(this.scroll)
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>
.hello{
  margin:0 auto;
  width: 100%;
  color: #333333;
  overflow: hidden;
  font-size: .32rem;
	i{
    font-size: 0.36rem;
  }
  .header{
    position: relative;
    .main_header{
      width: 375px;
      position: fixed;
      top:0px;
      left: 0px;
      z-index:1000;
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
        .contentBar{
          width: 332px;
          overflow-x: auto;
          text-align: left;
          white-space: nowrap;
          height: 30px;
          .itemBar{
            display: inline-block;
            padding:0 12px;
            span{
              position: relative;
              line-height: 28px;
              display: inline-block;
              // overflow: hidden;
            }
            .active{
              color: #FF6B00;
              i{
              width: 100%;
              display: block;
              position: absolute;
              height: 0px;
              border-bottom: 2px solid #FF6B00;
              top:27px;
              padding: 0 12px;
              z-index: 1000;
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
          padding-left: 13px;
          top:0px;
          z-index: -1;
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
            /* z-index: 1000; */
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
          transition:all .3s;
          height: 130px;    
        }
      }    
    }    
  }
  .main_bodyer{
    width: 100%;
    top:74px;
    height: 500px;
    position: relative;
    .bodys{
      background: green;
      position: absolute;
      left: 0px;
      top:0px;
    }
    .zindex{
      z-index: 1000;
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
}
</style>
