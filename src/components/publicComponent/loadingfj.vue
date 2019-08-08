<template>
    <div id="isShowLoading" class="custom-loading">
        <div class="demo-spin-container">
            <div>
                <div type="load-c" :size="size" class="content">
                    <i class="block" v-for="(s,i) in 12" :key="i" :style="'transform:rotate('+30*(i+1)+'deg);opacity:'+(1-(i/16))+''">
                        
                    </i>
                </div>
                <div>{{text}}</div>
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
    top:100px;
    left: 50%;
    }
    .content{
        position: relative;
        top:100px;
        left: 50%;   
        width: 40px;
        height: 40px;
        animation: ani-demo-spin 3s linear infinite;
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
            width: 2px;
            height: 18px;        
            margin: 0 auto;    
            content: ' ';
            border-radius: 40%;
            background-color: #aaa;       
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