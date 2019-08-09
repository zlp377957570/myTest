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
            <div class="main2">
                <div type="load-c" :size="size" class="content">
                    <i class="block" v-for="(s,i) in 6" :key="i" :style="'transform:rotate('+60*(i+1)+'deg);opacity:'+(1-(i/16))+''">
                        
                    </i>
                </div>
                <!-- <div>{{text}}</div> -->
            </div>            
            <div class="image">
                <img src="@/assets/image/icon/zhi_6.png" alt="">
                <div class="daodanxuanguanleft"></div>
                <div class="daodanxuanguanright"></div>
                <div class="daodanleft">
                    <img src="@/assets/image/icon/daodan-1.png" alt="">
                </div>
                <div class="daodanright">
                    <img src="@/assets/image/icon/daodan-1.png" alt="">
                </div>
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
    width: 7.5rem;
    height: 100%;
    position: absolute;
    top:0;
    left: 0px;
    z-index: 10000;
    // transform: rotate(-165deg);
    // transform: rotateY(15deg);

    .demo-spin-container{
        position: relative;
        left: 0px;
        top:0;      
        width: 100%;          
        height: 100%;
        transform: scale(.7);
        div{
            // position: absolute;
            // left: 0;
            // top:0;
        }        
        .main{
                            transform: translate3d(50%,0%,0);
            // transform: translate3d(45px,140px,40px);
            // transform: rotateX(75deg);                   
            .content{ 
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
        .main2{
            // transform: translate3d(45px,140px,40px);
            transform: rotateX(78deg);                    
            .content{ 
                width: 40px;
                height: 75px;
                animation: ani-demo-spin2 3s linear infinite;
                @keyframes ani-demo-spin2 {
                    0%{ transform: rotate(0deg);}
                    100%{ transform: rotate(360deg);}
                } 
                i{
                    position: absolute;
                    top:0px;
                    left: 0px;
                    width: 100%;
                    height: 100%;            
                }
                i:before{
                    display: block;
                    width: 8px;
                    height: 40%;          
                    margin: 0 auto;    
                    content: ' ';
                    border-radius: 20%;
                    background-color: #333;       
                }    
            }
        }        
        .image{
            width: 100%;
            height: 100%;
            img{
                z-index: 1;
            }
        }
        .daodanxuanguanleft{
            width: 7px;
            transform: translate3d(10px,10px,0);
            height: 25px;
            background: #555;
        }
        .daodanxuanguanright{
            width: 2%;
            // transform: translate3d(102px,140px,0);
            transform: translate3d(300%,100%,0);
            height: 3%;
            background: #555;
        }        
    }
}

</style>