<template>
  <div class="hello">
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
            <div class="itemBar" index="0" @click="tabSelect($event)">
              <span class="active">推荐</span>
            </div>
            <div class="itemBar" index="1" @click="tabSelect($event)">
              <span>手机</span>
            </div>
            <div class="itemBar" index="2" @click="tabSelect($event)">
              <span>智能</span>
            </div>
            <div class="itemBar" index="3" @click="tabSelect($event)">
              <span>电视</span>
            </div>
            <div class="itemBar" index="4" @click="tabSelect($event)">
              <span>笔记本</span>
            </div>
            <div class="itemBar" index="5" @click="tabSelect($event)">
              <span>家电</span>
            </div>  
            <div class="itemBar" index="6" @click="tabSelect($event)">
              <span>生活周边</span>
            </div>                                                          
          </div>       
          <div class="downBar">
            <van-icon name="arrow-down"/>    
          </div>     
          <div class="showContent"></div>
        </div>        
      </div>
      <div class="main_bodyer">
        <div class="bodys" v-show="index==0">
          <van-button @click="add" type="primary">主要按钮</van-button>
          <van-button type="info">信息按钮</van-button>
          <h1>00000000000000000000000000</h1>
          <p>00000000000000000000000000</p>    
        </div>
        <div class="bodys" v-show="index==1">
          <van-button @click="add" type="primary">主要按钮</van-button>
          <van-button type="info">信息按钮</van-button>
          <h1>11111111111111111111111111</h1>
          <p>111111111111111111111111111111</p>    
        </div>
        <div class="bodys" v-show="index==2">
          <van-button @click="add" type="primary">主要按钮</van-button>
          <van-button type="info">信息按钮</van-button>
          <h1>2222222222222222222222</h1>
          <p>222222222222222222222</p>    
        </div>
        <div class="bodys" v-show="index==3">
          <van-button @click="add" type="primary">主要按钮</van-button>
          <van-button type="info">信息按钮</van-button>
          <h1>3333333333333333333333</h1>
          <p>3333333333333333333333333</p>    
        </div>
        <div class="bodys" v-show="index==4">
          <van-button @click="add" type="primary">主要按钮</van-button>
          <van-button type="info">信息按钮</van-button>
          <h1>444444444444444444444444</h1>
          <p>5555555555555555555555555</p>    
        </div>
        <div class="bodys" v-show="index==5">
          <van-button @click="add" type="primary">主要按钮</van-button>
          <van-button type="info">信息按钮</van-button>
          <h1>555555555555555555555555</h1>
          <p>555555555555555555555555555555</p>    
        </div>
        <div class="bodys" v-show="index==6">
          <van-button @click="add" type="primary">主要按钮</van-button>
          <van-button type="info">信息按钮</van-button>
          <h1>666666666666666666666666</h1>
          <p>66666666666666666666666666</p>    
        </div>                                                      
      </div>
  </div>
</template>

<script>
import { Button,Dialog,Row, Col,Icon,Tab, Tabs  } from 'vant';
export default {
  name: 'HelloWorld',
  data () {
    return {
      index:0
    }
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
    tabSelect(e){
      console.log(e.currentTarget)
      // var index = this.index
      let $this = e.currentTarget
      let $index = $this.getAttribute('index')
      if($index>this.index){
        // $this.style.animated({"tranform":"translateX(-750px)"})
        // $this.style.left = 
        // $this.style.animation = "onLeft"
        // $this.style.animation = "onRight"
        // $this.setAttribute('class','bodys onLeft')
        $this.className = "bodys"
      }else{
      //  $this.style.animation = "onLeft"
          //  $this.setAttribute('class','bodys onRight')    
                  $this.className = "bodys"
      }
      this.index = $index
      console.log(this.index)
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
  .main_header{
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
      color: #666;
      position: relative;
      background: #f2f2f2;
      .contentBar{
        width: 85%;
        overflow-x: auto;
        text-align: left;
        white-space: nowrap;
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
        box-shadow:-15px 0 12px 0 #f2f2f2;
        position: absolute;
        top:0;
        right: 0;
        i{
          vertical-align: -3px;
        }
      }
    }    
  }
  .main_bodyer{
    width: 100%;
    height: 500px;
    border:1px solid red;
    position: relative;
    .bodys{
      // width: 100%;
      background: green;
      position: absolute;
      left: 0px;
      top:0px;
      border:1px solid red;
    }
    .onLeft{
      animation: onLeft .5s 1 ease-in;
    }
    .onRight{
      animation: onRight .5s 1 ease-in;
    }
    @keyframes onLeft{
      0%{
        left:750px;
      }
      100%{
        left:0px;
      }
    }
    @keyframes onRight{
      0%{
        left:0px;
      }
      100%{
        left:750px;
      }
    }    
  }
}
</style>
