<template>
<div class="carousel" ref="carousel">
    <div class="car" :index="keys" ref="car">
        <div ref="ritem" v-for="(item, index) in values" @sss="images" :key="index"
        @touchstart="touchStart($event)"
        :style="{backgroundImage: 'url('+ item.src +')'}"  >{{index}}
        </div>
    </div>
    <div class="pointer">
        <ul>
            <li v-for="(s,i) in 3" :key="i" :class="moved==(i+1)?'actived':''"></li>
        </ul>
    </div>
</div>
</template>
<script>
import { setTimeout, clearTimeout, setInterval, clearInterval } from 'timers'
export default {
    props:['images','keys'],    
    data() {
        return{
            // list: [
            //     {src: 'http://chzflive.caihome.cn/web/o_1c7390v9q1al1rak17g2v3uhc438?x-oss-process=image/resize,m_fill,h_240,w_320'},
            //     {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c352beae76d56e4a98c48c8782a497b2.jpg?thumb=1&w=720&h=360'},
            //     {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ccda14b5cc9070911063b07affc3e38c.jpg?thumb=1&w=720&h=360'}
            // ],  
            // list:[],  
            values:[],        
            moved: 1,
            // interval:5000,
            // duration: 300,
            timer: null,
        }
    },
    mounted: function () {    
        var self = this     
        self.$nextTick(() => {    
            self.autoMove()
        })
    },
    created(){
        // console.log(this.indexs)  
        if(this.images!==undefined){
            for(var i=0;i<this.images.length;i++){
                this.values.push(this.images[i])
            }
        }
        this.values.push(this.values[0]);
        this.values.unshift(this.values[(this.values.length-2)]);
        // console.log(this.values)  

    },
    computed:{
      //生成新的图片组合
        newList () {
            var self = this
            // console.log(self.values)
                // this.list.push(this.list[0]);
                // this.list.unshift(this.list[(this.list.length-2)]);
                // console.log(values)   
                return values          
        } 
    },
    beforeDestroy() {
        clearInterval(this.timer);        
        this.timer = null;
    },     
    methods: {
        autoMove(){
            var self = this
            //  self.timer = setInterval(self.move,5000)
             self.timer = setInterval(()=>{
                 self.move()
             },5000)
        },
        move(){
            var _that = this
            var devceWidth =  _that.$refs.ritem[0].clientWidth
            // var devceWidth =  _that.$refs.carousel[0].width
            _that.moved++      
            if(_that.moved==0){
                _that.moved = _that.values.length-2
            }else if(_that.moved==_that.values.length-1)(
                _that.moved = 1
            )       
            _that.$refs.car.style.left = _that.moved * - devceWidth + 'px'

        },
        isTouch(e){
            this.timeOutEvent = 0
        },
        touchStart (a) {
            a.stopPropagation()
            var _that = this
            var $that = a.currentTarget
            var clientWidths = $that.clientWidth     
            var width = clientWidths/2     
            var $parent =   _that.$refs.car     
            var t = 0                     
            clearInterval(_that.timer)
            _that.timer = null
            var delTime = setInterval(()=>{
                t++
            },10)
            var startX = a.touches[0].pageX; 
            var timeOutEvent = setTimeout(function(){
                _that.isTouch(a)
            },800)
            $that.ontouchmove = function(b){
                // a.preventDefault();
                b.stopPropagation()
                timeOutEvent = 0
                var pageX =  b.touches[0].pageX
                var moveX = pageX - startX;
               $parent.style.transform ='translate3d('+ moveX + 'px,0,0'+')' 
            }
            $that.ontouchend = function(c){
                c.stopPropagation()
                clearTimeout(timeOutEvent)
                clearInterval(delTime) 
                console.log(timeOutEvent)
                if(timeOutEvent!=0){
                    //执行点击事件
                } 
                $parent.style.transform ='translate3d('+ 0 + 'px,0,0'+')'
                var endX = c.changedTouches[0].pageX
                var moveX = endX - startX;                
                if(moveX>0){
                    if(Number(moveX)>=width || Number(moveX)>=width/4 && t<15){
                        _that.moved--
                        if(_that.moved==0){
                            _that.moved = _that.values.length-2
                        }else if(_that.moved==_that.values.length-1)(
                            _that.moved = 1
                        )                      
                        $parent.style.left = _that.moved * -clientWidths + 'px'
                    }
                }
                if(moveX<0){
                    if(-Number(moveX)>=width || -Number(moveX)>=width/4 && t<15){
                        _that.moved++
                        if(_that.moved==0){
                            _that.moved = _that.values.length-2
                        }else if(_that.moved==_that.values.length-1)(
                            _that.moved = 1
                        )                      
                        $parent.style.left = _that.moved * -clientWidths + 'px'
                    }            
                }                    
                    _that.autoMove()                                       
            }
        },




    }
}
</script>
<style lang="less" scoped>
    .carousel {
        overflow: hidden;
        width: 100%;
        height: 187px;
        position: relative;
        top:0px;
        left: 0px;
        .car{
            width: 1875px;
            // transition:.1s;
            position: relative;
            display: flex;
            flex-wrap: nowrap;
            top:0px;
            left: 0px;
            height: 100%;  
            float: left;
            div{
                position: relative;
                /* left: 0px; */
                width: 375px;
                display: flex;
                flex-wrap: nowrap;
                float: left;
                height:100%;
                background-size: 100%;
                /* text-align: center; */
                font-size: 30px;
                color: #fff;
                line-height: 500px;
            }
        }
        .pointer{
                pointer-events: none;
                position: absolute;
                left: 45%;
                top:90%;
                z-index: 0;
           ul{
                li{
                    float: left;
                    width: 6px;
                    height: 6px;
                    border-radius: 50%;
                    margin-right:10px;
                    background: #c0c0c0;
                }
                .actived{
                    width: 10px;
                    height: 10px;                
                    margin-top:-2px;
                    border:2px solid #fff;
                    background: transparent;
                }
            }
        }
    }
</style>