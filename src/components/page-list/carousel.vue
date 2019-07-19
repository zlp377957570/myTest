<template>
<div class="carousel">
    <div class="car" ref="car">
        <div ref="ritem" v-for="(item, index) in values" @sss="images" :key="index"
        @touchstart="touchStart($event)"
        @touchmove="touchMove($event)"
        @touchend="touchEnd($event)"
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
export default {
    props:['images','keys'],    
    data() {
        return{
            // list: [
            //     {src: 'http://chzflive.caihome.cn/web/o_1c7390v9q1al1rak17g2v3uhc438?x-oss-process=image/resize,m_fill,h_240,w_320'},
            //     {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c352beae76d56e4a98c48c8782a497b2.jpg?thumb=1&w=720&h=360'},
            //     {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ccda14b5cc9070911063b07affc3e38c.jpg?thumb=1&w=720&h=360'}
            // ],  
            list:[],  
            values:[],        
            moved: 1,
            interval:5000,
            duration: 300,
            timeOutEvent:0,
            del:0,
            delTime:0,
            // devceWidth:375,
            timer: null,
        }
    },
    mounted: function () {         
        this.$nextTick(() => {    
            this.autoMove()
        },500)
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
    methods: {
        autoMove(){
             this.timer = setInterval(this.move,this.interval)
        },
        move(){

            var _that = this
            _that.moved++      
            // if(!moveX) moveX = 0
            if(_that.moved==0){
                _that.moved = _that.values.length-2
            }else if(_that.moved==_that.values.length-1)(
                _that.moved = 1
            )       
                var devceWidth =  _that.$refs.ritem[0].clientWidth
                
                // console.log(devceWidth)
                this.$refs.car.style.left = _that.moved * - devceWidth + 'px'

        },
        isTouch(e){
            this.timeOutEvent = 0
        },
        touchStart (e) {
                         console.log(this.keys) 
            var _that = this
            // console.log(e.target)
            clearInterval(this.timer)
            this.delTime = setInterval(()=>{
                this.del++
            },10)
            
            this.timer = null
            _that.startX = e.touches[0].pageX;
            _that.timeOutEvent = setTimeout(function(){
                _that.isTouch(e)
            },800)
            // return false
        },
        touchMove (e) {
            e.preventDefault()
            e.stopPropagation()
            this.timeOutEvent=0
            var pageX =  e.touches[0].pageX
            this.moveX = pageX - this.startX;
            // console.log('pageX:'+pageX)
            // console.log('moveX:'+this.moveX)
            // this.move(moveX)
            e.currentTarget.parentNode.style.transform ='translate3d('+ this.moveX + 'px,0,0'+')' 
        },
        touchEnd (s) {
            clearTimeout(this.timeOutEvent)
            clearInterval(this.delTime) 
            if(this.timeOutEvent!=0){
                //执行点击事件
            } 
            s.currentTarget.parentNode.style.transform ='translate3d('+ 0 + 'px,0,0'+')'
            var endX = s.changedTouches[0].pageX
            var width = s.currentTarget.clientWidth/2
            var $parent =   this.$refs.car
            var clientWidths = s.currentTarget.clientWidth
                        // console.log('endX:'+endX)
                        // console.log(this.del)
                        // console.log(clientWidths)
            if(this.moveX>0){
                if(Number(this.moveX)>=width || Number(this.moveX)>=width/4 && this.del<15){
                    this.moved--
                    if(this.moved==0){
                        this.moved = this.values.length-2
                    }else if(this.moved==this.values.length-1)(
                        this.moved = 1
                    )                      
                    $parent.style.left = this.moved * -clientWidths + 'px'
                }
            }
            if(this.moveX<0){
                if(-Number(this.moveX)>=width || -Number(this.moveX)>=width/4 && this.del<15){
                    this.moved++
                    if(this.moved==0){
                        this.moved = this.values.length-2
                    }else if(this.moved==this.values.length-1)(
                        this.moved = 1
                    )                      
                    $parent.style.left = this.moved * -clientWidths + 'px'
                }            
            }                        
                this.del = 0
                // setTimeout(()=>{
                    this.autoMove()
                // },2000)
        }

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
            overflow: auto;
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
            position: absolute;
                left: 45%;
                top:90%;
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