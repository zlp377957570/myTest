<template>
<div class="carousel">
    <div class="car" ref="swiper">
        <div ref="ritem" v-for="(item, index) in newlist" :key="index"
        @touchstart="touchStart($event)"
        @touchmove="touchMove($event)"
        @touchend="touchEnd($event)"
        :style="{backgroundImage: 'url('+ item.src +')'}"  >{{index}}</div>
    </div>
</div>
</template>
<script>
export default {
    data() {
        return{
            list: [
                {src: 'http://chzflive.caihome.cn/web/o_1c7390v9q1al1rak17g2v3uhc438?x-oss-process=image/resize,m_fill,h_240,w_320'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c352beae76d56e4a98c48c8782a497b2.jpg?thumb=1&w=720&h=360'},
                {src: 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ccda14b5cc9070911063b07affc3e38c.jpg?thumb=1&w=720&h=360'}
            ],            
            contenter: this.$refs.swiper,
            moved: 1,
            interval:2000,
            duration: 300,
            timeOutEvent:0,
            del:0,
            delTime:0,
            timer: null,
        }
    },
    mounted: function () {         
        this.$nextTick(() => {    
            this.autoMove()
      })
    },
  
    computed:{
      //生成新的图片组合
        newlist: function () {
            this.list.push(this.list[0]);
            this.list.unshift(this.list[(this.list.length-2)]);
            return this.list;
        } 
    },
    methods: {
        autoMove(){
             this.timer = setInterval(this.move,this.interval)
        },
        move(moveX){
            var _that = this
            _that.moved++      
            if(!moveX) moveX = 0
            if(_that.moved==0){
                _that.moved = _that.list.length-2
            }else if(_that.moved==_that.list.length-1)(
                _that.moved = 1
            )       
                var $parent =   _that.$refs.swiper
                var $div = _that.$refs.ritem[0]
                $parent.style.left = _that.moved * -375 + 'px'

        },
        isTouch(e){
            this.timeOutEvent = 0
        },
        touchStart (e) {
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
            var $parent =   this.$refs.swiper
                        // console.log('endX:'+endX)
                        // console.log(this.del)
                        // console.log($parent)
            if(this.moveX>0){
                if(Number(this.moveX)>=width || Number(this.moveX)>=width/4 && this.del<15){
                    this.moved--
                    if(this.moved==0){
                        this.moved = this.list.length-2
                    }else if(this.moved==this.list.length-1)(
                        this.moved = 1
                    )                      
                    $parent.style.left = this.moved * -375 + 'px'
                }
            }
            if(this.moveX<0){
                if(-Number(this.moveX)>=width || -Number(this.moveX)>=width/4 && this.del<15){
                    this.moved++
                    if(this.moved==0){
                        this.moved = this.list.length-2
                    }else if(this.moved==this.list.length-1)(
                        this.moved = 1
                    )                      
                    $parent.style.left = this.moved * -375 + 'px'
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
    }
</style>