<template>
    <div id="isShowLoading" class="custom-loading">
        <div class="demo-spin-container">
            <div class="main">
                <div type="load-c" :size="size" class="content">
                    <i class="block" v-for="(s,i) in 12" :key="i" :style="'transform:rotate('+30*(i+1)+'deg);opacity:'+(1-(i/16))+''">
                        
                    </i>
                </div>
                <!-- <div>{{text}}</div> -->
            </div>
            <div class="main two">
                <div type="load-c" :size="size" class="content">
                    <i class="block" v-for="(s,i) in 6" :key="i" :style="'transform:rotate('+60*(i+1)+'deg);opacity:'+(1-(i/16))+''">
                        
                    </i>
                </div>
                <!-- <div>{{text}}</div> -->
            </div>            
            <div>
                <img src="@/assets/image/icon/zhi_6.png" alt="">
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name: 'Loading',
    data () {
        return {}
    },
    props: {
        text: {
            type: String,
            default: 'Loading'
        },
        size: {
            type: Number,
            default: 30
        }
    }
}
</script>
<style lang="less" scoped>
#isShowLoading{
    position: absolute;
    z-index: 10000;
    top:50%;
    left: 10%;
    transform: rotate(-65deg);
    // transform: rotateY(15deg);
    .demo-spin-container{
        position: absolute;
        top:30%;
        transform: scale(.7);
        left: 10%;            
        .main{
            // transform: translate3d(45px,140px,40px);
            // transform: rotateX(75deg);
            position: absolute;
                top:-97px; 
                left: 72px;                             
            .content{
                position: absolute;
                top:100px;
                left: 50%;   
                width: 40px;
                height: 80px;
                animation: ani-demo-spin 2s linear infinite;
                @keyframes ani-demo-spin {
                    0%{ transform: rotate(0deg);}
                    100%{ transform: rotate(360deg);}
                } 
                i{
                    position: absolute;
                    top:0px;
                    left: 0px;
                    width: 100%;
                    height: 100%;            
                    // background-color: #fff;
        
        
                }
                i:before{
                    display: block;
                    width: 8px;
                    height: 188%;        
                    margin: 0 auto;    
                    content: ' ';
                    border-radius: 20%;
                    background-color: #333;       
                }    
            }
        }
        .two{
            position: absolute;
            transform: rotateX(78deg);   
            top:14%; 
            left: 92%;         
            .content{
                height: 75px;
                animation: ani-demo-spin 3s linear infinite;                
                i:before{
                    // width: 8px;
                    height: 40%;                        
                }
            }                     
        }
    }
    }

    /* .demo-spin-col{
        height: 100px;
        position: relative;
        top:0;
        border: 1px solid #eee;
    }
    .ivu-spin-fix{
        z-index: 1002;
    } */
</style>