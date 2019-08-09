<template>
    <div id="dd">
        <div id="ds">
        <!-- <button id="cb">☺</button> -->
        <video controls muted autoplay loop id="vd">
            <source src="@/assets/image/icon/bg.mp3" type="video/mp4">
        </video>
        <div id="d1">
            <div id="d2">
                <div id="d3"></div>
            </div>
        </div>
        </div>  
    </div>    
</template>
<script>
export default {
    name:'yinyue1',
    mounted(){
    // function toggleSound() {
    //             var music = document.getElementById("vd");//获取ID  
    //                 console.log(music);
    //                 console.log(music.paused);
    //             if (music.paused) { //判读是否播放  
    //                 music.paused=false;
    //                 music.play(); //没有就播放 
    //             }  
    //             
    //         }

    // setInterval("toggleSound()",1);

    },
    methods:{
        openMuisc(){
        //        1：获取音频元素
        var a333 = document.getElementById("a333");
        //        2：获取复选框元素
        if(a333!==null)
        a333.volume = 0.3;
        // var cb = document.getElementById("cb");
            if(a333.paused){
                console.log(a333)
                a333.play();
            } else{
                a333.pause();
            }        
        }
    }
}
</script>
<style>
#vd{
    opacity: .1;
}
     #dd{
            width:500px;
            /* margin:200px auto 0; */
        }
        #cb{
            width:50px;
            height:100px;
            font-size:84px;
            border:1px solid red;
            transition:all 3s;
            position: absolute;
            top:400px;
            left: 200px;
            transform-origin:0% 50%;
            transform: scale(0.5);
        }
        #cb{
            animation:change 10s linear infinite;
        }
        #cb:hover{
            color:yellow;
            opacity:0.5;
        }
        #d1{
            width:100px;
            height:100px;
            margin-left:150px;
            margin-top:320px;
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
                /* transform:rotate3D(0,1,0,0deg) skewY(-45deg); */
                transform:rotateY(0deg) skewY(-45deg);
            }
            100%{
                background:red;
                color:red;
                /* transform:rotate3D(0,1,0,1080deg) skewY(-45deg); */
                transform:rotateY(360deg) skewY(-45deg);
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


