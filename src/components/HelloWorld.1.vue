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
              <div class="itemBar" index="0" @click="tabSelect(0)">
                <span :class="index==0?'active':''">推荐</span>
              </div>
              <div class="itemBar" index="1" @click="tabSelect(1)">
                <span :class="index==1?'active':''">手机</span>
              </div>
              <div class="itemBar" index="2" @click="tabSelect(2)">
                <span :class="index==2?'active':''">智能</span>
              </div>
              <div class="itemBar" index="3" @click="tabSelect(3)">
                <span :class="index==3?'active':''">电视</span>
              </div>
              <div class="itemBar" index="4" @click="tabSelect(4)">
                <span :class="index==4?'active':''">笔记本</span>
              </div>
              <div class="itemBar" index="5" @click="tabSelect(5)">
                <span :class="index==5?'active':''">家电</span>
              </div>  
              <div class="itemBar" index="6" @click="tabSelect(6)">
                <span :class="index==6?'active':''">生活周边</span>
              </div>                                                          
            </div>       
            <div class="downBar" @click="openBar">
              <span :class="show?'openBar':''"></span>
            </div>     
            <div :class="show?'showContent showHeight':'showContent'">
              <p>全部</p>
              <div class="showBody">
                <span @click="headerBarSelect(key)" v-for="(val,key) in ['推荐','手机','智能','电视','笔记本','家电','生活周边']" :key="key" :index="key" :class="index==key?'heHeight':''">
                  {{val}}                                                                                
                </span>
              </div>
            </div>
          </div>        
        </div>
      </div>
      <div class="main_bodyer">
        <transition-group :name="fades" tag="div">          
          <div :class="show?'bodys':'bodys zindex'" :key="0" v-show="index==0">
            <van-button @click="add" type="primary">主要按钮</van-button>
            <van-button type="info">信息按钮</van-button>
            <h1>00000000000000000000000000</h1>
            <p>00000000000000000000000000</p>    
          </div>
          <div :class="show?'bodys':'bodys zindex'" :key="1" v-show="index==1">
            <van-button @click="add" type="primary">主要按钮</van-button>
            <van-button type="info">信息按钮</van-button>
            <h1>11111111111111111111111111</h1>
            <p>111111111111111111111111111111</p>    
          </div>
          <div :class="show?'bodys':'bodys zindex'" :key="2" v-show="index==2">
            <van-button @click="add" type="primary">主要按钮</van-button>
            <van-button type="info">信息按钮</van-button>
            <h1>2222222222222222222222</h1>
            <p>222222222222222222222</p>    
          </div>
          <div :class="show?'bodys':'bodys zindex'" :key="3" v-show="index==3">
            <van-button @click="add" type="primary">主要按钮</van-button>
            <van-button type="info">信息按钮</van-button>
            <h1>3333333333333333333333</h1>
            <p>3333333333333333333333333</p>    
          </div>
          <div :class="show?'bodys':'bodys zindex'" :key="4" v-show="index==4">
            <van-button @click="add" type="primary">主要按钮</van-button>
            <van-button type="info">信息按钮</van-button>
            <h1>444444444444444444444444</h1>
            <p>5555555555555555555555555</p>    
          </div>
          <div :class="show?'bodys':'bodys zindex'" :key="5" v-show="index==5">
            <van-button @click="add" type="primary">主要按钮</van-button>
            <van-button type="info">信息按钮</van-button>
            <h1>555555555555555555555555</h1>
            <p>555555555555555555555555555555</p>    
          </div>
          <div :class="show?'bodys':'bodys zindex'" :key="6" v-show="index==6">
            <van-button @click="add" type="primary">主要按钮</van-button>
            <van-button type="info">信息按钮</van-button>
            <h1>666666666666666666666666</h1>
            <p>66666666666666666666666666</p>    
          </div>                                                      
        </transition-group>  
      </div>
  </div>
</template>

<script>
import { Button,Dialog,Row, Col,Icon,Tab, Tabs  } from 'vant';
import { setTimeout } from 'timers';
export default {
  name: 'HelloWorld',
  data () {
    return {
      index:0,
      show:false,
      scroll:'',
      fades:''
    }
  },
  mounted(){
    window.addEventListener('scroll', this.onScrollWidth)
  },
  methods:{
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
      // let $this = e.currentTarget
      let $parent = $this.parentNode
      let $index = $this.getAttribute('index')
      let width = $this.offsetWidth
      let scrollLeft =$parent.scrollLeft
      console.log('width:'+width)
      console.log('scrollLeft:'+scrollLeft)
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
          width: 322px;
          overflow-x: auto;
          text-align: left;
          white-space: nowrap;
          // transition:all 1s;
          .itemBar{
            display: inline-block;
            padding:0 10px;
            span{
              line-height: 28px;
              display: inline-block;
            }
            .active{
              color: #FF6B00;
              border-bottom: 2px solid #FF6B00;
            }
          }
        }
        .downBar{
          line-height: 30px;
          padding:0 15px;
          background: #f2f2f2;
          box-shadow:-25px -5px 12px 0 #f2f2f2;
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
