<template>

  <div>
<div @click="changeOn" :class="isOff?'isOff':'isOn'">
 
      </div>
      <audio id="audio" :src="require('@/assets/image/icon/bg.mp3')"></audio>

</div>
</template>
<script>
export default {
    name:'yinyue1',
    data(){
        return{
            
          isOff:true
        }
    },
    mounted(){

    // 自动播放音乐效果，解决微信自动播放问题
       document.addEventListener('touchstart',this.audioAutoPlay,false);
       document.addEventListener('WeixinJSBridgeReady', this.audioAutoPlay,false);
       let oAudio = document.querySelector("#audio");
        oAudio.onended = function () {//播放完毕，重新循环播放
            oAudio.load();
            oAudio.play();
        }
    },
    methods:{
 changeOn(){
                let oAudio = document.querySelector("#audio");
               if(this.isOff){
                oAudio.play();//让音频文件开始播放     
               }else{
                oAudio.pause();//让音频文件暂停播放 
               }
               this.isOff = !this.isOff;
           },
           audioAutoPlay() {
                let audio = document.getElementById('audio');
                    this.isOff = false;
                    audio.play();
                document.removeEventListener('touchstart',this.audioAutoPlay);
            }

    }
}
</script>
<style>
    #a3{
        /* opacity: 0; */
    }
     #dd{
            width:500px;
            margin:200px auto 0;
        }
        #cb{
            width:50px;
            height:100px;
            font-size:84px;
            border:1px solid red;
            transition:all 3s;
            transform-origin:0% 50%;
        }
        #cb{
            animation:change 13s linear infinite;
        }
        #cb:hover{
            color:yellow;
            opacity:0.5;
        }
        #d1{
            width:100px;
            height:100px;
            margin-left:-45px;
            margin-top:0px;
            border:2px solid lightBlue;
            border-radius:50%;
            transform:rotateX(60deg);
            animation:change1 3s linear infinite;
        }
        #d1:hover{
            border:4px solid green;
        }
        #d2{
            width:50px;
            height:50px;
            border:2px solid lightBlue;
            border-radius:50%;
            position:absolute;
            top:-10px;
            left:20px;
            animation:change1 5s linear infinite;
        }
        #d3{
            width:25px;
            height:25px;
            border-radius:50%;
            position:absolute;
            top:-20px;
            left:10px;
            border:2px solid lightBlue;
            animation:change1 7s linear infinite;
        }
        @keyframes change1{
            0%{
                border: 1px solid red;
            }
            25%{
                border: 3px solid orangered;
            }
            50%{
                border: 1px solid yellow;
            }
            75%{
                border: 3px solid blue;
            }
            100%{
                border: 1px solid powderblue;
            }
        }
        @keyframes change{
            0%{
                background:lightBlue;
                transform:rotate3D(0,1,0,0deg) skewY(-45deg);
            }
            100%{
                background:red;
                color:red;
                transform:rotate3D(0,1,0,1080deg) skewY(-45deg);
            }
        }
        /*#ds{*/
            /*display:block;*/
            /*width:200px;*/
            /*height:200px;*/
            /*background:red;*/
        /*}*/
        audio{
            display:block;
            width:200px;
            height:200px;
            background:red;
        }
</style>


