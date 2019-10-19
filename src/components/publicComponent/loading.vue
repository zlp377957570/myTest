<template>
    <div id="isShowLoading" class="custom-loading">
        <div class="body">
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
                    <div class="feiji"><img src="@/assets/image/icon/zhi_6.png" alt=""></div>
                    <div class="xuangua xuangua1"></div>
                    <div class="xuangua xuangua2"></div>
                    <div class="xuangua xuangua5"></div>
                    <div class="fashe fashe1">
                        <div class="daodan daodan1">
                            <img src="@/assets/image/icon/daodan-1.png" alt="">
                        </div>
                        <div class="weiyan weiyan1">
                            <img src="@/assets/image/icon/weiyan.png" alt="">
                        </div>                           
                    </div>
                    <div class="fashe fashe2">
                        <div class="daodan daodan2">
                            <img src="@/assets/image/icon/daodan-1.png" alt="">
                        </div>                    
                        <div class="weiyan weiyan2">
                            <img src="@/assets/image/icon/weiyan.png" alt="">
                        </div>                           
                    </div>                      
                    <!-- <div class="weiyan weiyan1">
                        <img src="@/assets/image/icon/weiyan.png" alt="">
                    </div>                                    -->
                    <div class="zidan zidan1"></div>
                    <div class="zidan zidan2"></div>
                    <div class="zidanxuangua zidanxuangua1"></div>
                    <div class="zidanxuangua zidanxuangua2"></div>
                    <div class="caiping caiping1"></div>
                    <div class="caiping caiping2"></div>
                    <div class="xiantiao xiantiao1"></div>                    
                    <div class="xiantiao xiantiao2"></div>                    
                    <!-- <div class="xiantiao xiantiao3"></div>                     -->
                    <!-- <div class="xiantiao xiantiao4"></div>                     -->
                    <!-- <div class="xiantiao xiantiao5"></div>                     -->
                    <!-- <div class="xiantiao xiantiao6"></div>                     -->
                    <div class="xiantiao xiantiao7"></div>                    
                    <!-- <div class="xiantiao xiantiao8"></div>                     -->
                    <!-- <div class="xiantiao xiantiao9"></div>                     -->
                    <div class="boli boli1"></div>                    
                    <div class="boli boli2"></div>                    
                    <div class="boli boli3"></div>                    
                    <div class="boli boli4"></div>                    
                    <!-- <div class="boli boli5"></div>                     -->
                    <!-- <div class="boli boli6"></div>                     -->
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
    // width: 7.5rem;
    height: 100%;
    position: absolute;
    top:20%;
    left: 10%;
    pointer-events: none;
    z-index: 10000;
    .body{
        transform: rotate(0deg);
        // transform-origin: 200px 0px;
        position: absolute;
        top:0px;
        left: 0px;        
        animation: bodymove 18s linear 3s infinite;
        @keyframes bodymove {
            0%{
                transform: rotate(0deg);

                top:0px;
                left: 0px;
            }
            20%{
                transform: rotate(-90deg);
                top:-50px;
                left:-50px;                
            }                                          
            40%{
                transform: rotate(-100deg);

                top:600px;
                left:100px;                
            }  
            60%{
                transform: rotate(-155deg);

                top:600px;
                left:110px;                
            }     
            75%{
                transform: rotate(-215deg);

                top:600px;
                left:120px;                
            }                                         
            100%{
                transform: rotate(-270deg);
                top:200px;
                left:150px;                
            }                 
               
        }            
        .demo-spin-container{
            position: relative;
            left: 0px;
            top:0;      
            width: 100%;          
            height: 100%;
            // transform: scale(.7);  
            .main{
                // transform: translate3d(25%,0%,0);
                // transform: rotateX(75deg);                   
                .content{ 
                    position: absolute;
                    z-index: 99999;
                    top:0px;
                    left: 75px;
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
                    position: absolute;
                    top:110px;
                    left:233px;                
                    width: 40px;
                    height: 75px;
                    animation: ani-demo-spin2 .5s linear infinite;
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
                .feiji{
                    img{
                        width: 260px;
                        height: 80px;                              
                        position: absolute;
                        left: 0px;
                        top:0px;
                        z-index: 10000;
                    }
                }

                .fashe{
                    position: absolute;
                    .daodan{
                        position: absolute;     
                        img{
                            transform: rotate(-45deg);           
                            width: 20px;
                            height: 20px;                        
                        }
                    }                    
                    .weiyan{
                        position: absolute;     
                        width: 20px;
                        height: 20px;                                   
                        img{
                            transform: rotate(-45deg);       
                            // position: absolute;
                            width: 100%;
                            height: 100%;                    
                        }                    
                    }                  
                }
                .fashe1{        
                    top:44px;
                    left: 91px;                              
                    animation: fashe1 6s linear 8s infinite;
                    animation-fill-mode:forwards;
                    @keyframes fashe1 {
                        0%{
                            top:44px;
                            left: 91px;   
                            transform: rotate(0deg);                                 
                        }
                        10%{
                            top:60px;
                            left: 70px;   
                            transform: rotate(-45deg);                          
                        }                        
                        40%{
                            top:500px;
                            left: 58px;
                            transform: rotate(-75deg);   
                                                          
                        }                        
                        100%{
                            top:1550px;
                            left: 58px;
                            transform: rotate(-90deg);        
                        }
                    }        
                    .daodan1{
                        // top:46px;
                        // left: 86px;                  
                    }       
                    .weiyan1{
                        top:0px;
                        left: 27px;   
                        width: 0px;
                        height: 0px;    
                        animation: weiyan1 2s linear 6s infinite;
                        @keyframes weiyan1 {
                            0%{
                                width: 15px;
                                height: 15px;   
                                opacity: .5;                                                        
                            }
                            30%{
                                width: 35px;
                                height: 35px;         
                                opacity: 1;                       
                            }      
                            35%{
                                width: 40px;
                                height: 40px;  
                                opacity: .9;                            
                            }  
                            40%{
                                width: 35px;
                                height: 35px;                            
                                opacity: .9;  
                            }                                                                                
                            45%{
                                width: 30px;
                                height: 30px;                                  
                                opacity: .8;  
                            }   
                            50%{
                                width: 35px;
                                height: 35px;          
                                opacity: .7;  
                            }                   
                            55%{
                                width: 30px;
                                height: 30px;  
                                opacity: .8;          
                            }  
                            60%{
                                width: 35px;
                                height: 35px;  
                                opacity: .7;          
                            }   
                            65%{
                                width: 25px;
                                height: 25px;  
                                opacity: .8;          
                            }        
                            70%{
                                width: 30px;
                                height: 30px;  
                                opacity: .7;          
                            }  
                            75%{
                                width: 25px;
                                height: 25px;  
                                opacity: .8;          
                            }                                                                                                                    
                            80%{
                                width: 20px;
                                height: 20px;  
                                opacity: .7;          
                            }                                 
                            85%{
                                width: 25px;
                                height: 25px;       
                                opacity: .7;     
                            }                                                                                          
                            90%{
                                width: 20px;
                                height: 20px;          
                                opacity: .8;  
                            }
                            100%{
                                width: 15px;
                                height: 15px;          
                                opacity: .7;  
                            }                            
                        }                               
                    }                                                        
                }
                .fashe2{        
                    top:-44px;
                    left: 91px;                              
                    animation: fashe2 6s linear 24s infinite;
                    animation-fill-mode:forwards;                    
                    @keyframes fashe2 {
                        0%{
                            top:-44px;
                            left: 91px;   
                            transform: rotate(0deg);                                 
                        }
                        20%{
                            top:-60px;
                            left: 50px;   
                            transform: rotate(-45deg);                          
                        }                          
                        60%{
                            top:60px;
                            left: 70px;   
                            transform: rotate(-65deg);                          
                        }                        
                        80%{
                            top:500px;
                            left: 58px;
                            transform: rotate(-85deg);   
                                                          
                        }                        
                        100%{
                            top:1550px;
                            left: 58px;
                            transform: rotate(-90deg);        
                        }
                    }        
                    .daodan2{
                        // top:46px;
                        // left: 86px;                  
                    }       
                    .weiyan2{
                        top:0px;
                        left: 27px;   
                        width: 0px;
                        height: 0px;    
                        animation: weiyan1 2s linear 22s infinite;
                        @keyframes weiyan1 {
                            0%{
                                width: 15px;
                                height: 15px;   
                                opacity: .5;                                                        
                            }
                            30%{
                                width: 35px;
                                height: 35px;         
                                opacity: 1;                       
                            }      
                            35%{
                                width: 40px;
                                height: 40px;  
                                opacity: .9;                            
                            }  
                            40%{
                                width: 35px;
                                height: 35px;                            
                                opacity: .9;  
                            }                                                                                
                            45%{
                                width: 30px;
                                height: 30px;                                  
                                opacity: .8;  
                            }   
                            50%{
                                width: 35px;
                                height: 35px;          
                                opacity: .7;  
                            }                   
                            55%{
                                width: 30px;
                                height: 30px;  
                                opacity: .8;          
                            }  
                            60%{
                                width: 35px;
                                height: 35px;  
                                opacity: .7;          
                            }   
                            65%{
                                width: 25px;
                                height: 25px;  
                                opacity: .8;          
                            }        
                            70%{
                                width: 30px;
                                height: 30px;  
                                opacity: .7;          
                            }  
                            75%{
                                width: 25px;
                                height: 25px;  
                                opacity: .8;          
                            }                                                                                                                    
                            80%{
                                width: 20px;
                                height: 20px;  
                                opacity: .7;          
                            }                                 
                            85%{
                                width: 25px;
                                height: 25px;       
                                opacity: .7;     
                            }                                                                                          
                            90%{
                                width: 20px;
                                height: 20px;          
                                opacity: .8;  
                            }
                            100%{
                                width: 15px;
                                height: 15px;          
                                opacity: .7;  
                            }                            
                        }     
                    }                                                        
                }

               .zidan{
                    width: 20px;                
                    height: 1px;
                    position: absolute;
                    background: blue;         
                }  
                .zidan1{
                    top:4px;  
                    left: 76px;     
                    animation: zidan1 .2s linear 32s infinite;
                    @keyframes zidan1 {
                        0%{
                            top:2px;                              
                            left: 40px;
                        }
                        100%{
                            top:20px;                              
                            left: -250px;
                        }
                    }                             
                }       
                .zidan2{
                    top:74px;  
                    left: 76px;  
                    animation: zidan2 .2s linear 31s infinite;
                    @keyframes zidan2 {
                        0%{
                            top:78px;  
                            left: 40px;
                        }
                        100%{
                            top:52px;  
                            left: -250px;
                        }
                    }                                
                }                 
               .zidanxuangua{
                    width: 35px;                
                    height: 5px;
                    position: absolute;
                    background: red;         
                }  
                .zidanxuangua1{
                    left: 80px;
                    top:2px;             
                }       
                .zidanxuangua2{
                    left: 80px;
                    top:72px;             
                }                          
                .caiping{
                    width: 55px;                
                    height: 7px;
                    position: absolute;
                    border-radius: 50%;
                    background: rgb(250, 165, 7);         
                }
                .caiping1{
                    left: 25px;
                    top:24px;
                    transform: rotate(-2deg);                    
                }
                .caiping2{
                    left: 25px;
                    top:48px;
                    transform: rotate(2deg);
                }
                .xuangua{
                    position: absolute;
                    width: 15px;                
                    height: 25px;
                    border: 2px solid #eee;
                    background: rgba(0, 0, 0, .7);
                    z-index: 9;                    
                }
                .xuangua1{
                    transform: translate3d(92px,65px,0);
                }
                .xuangua2{
                    transform: translate3d(92px,-10px,0);
                } 
                .xuangua5{
                    width: 5px;                
                    height: 20px;    
                    border: 2px solid  rgba(0, 0, 0, .7);     
                    background: rgba(0, 0, 0, .2);                   
                    transform: translate3d(250px,30px,0);
                }   
                .xiantiao{
                    position: absolute;
                    width: 30px;                
                    height: 2px;
                    background: rgba(0, 0, 0, .5);                                    
                }  
                .xiantiao1{
                    left: 20px;
                    top:25px;
                    transform: rotate(-8deg);
                } 
                .xiantiao2{
                    left: 20px;
                    top:52px;
                    transform: rotate(8deg);
                }       
                .xiantiao3{
                    width: 17px;  
                    height: 7px;                                             
                    left: 47px;
                    top:18px;
                    background: rgba(0, 0, 0, .3);                         
                    transform: rotate(-35deg);
                } 
                .xiantiao4{
                    width: 15px;  
                    height: 7px;                    
                    left: 47px;
                    top:55px;
                    background: rgba(0, 0, 0, .3);                         
                    transform: rotate(35deg);
                }    
                .xiantiao5{
                    width: 80px;  
                    height:3px;                    
                    left:72px;
                    top:17px;
                    transform: rotate(7deg);
                    background: rgba(0, 0, 0, .6);                          
                } 
                .xiantiao6{
                    width: 80px;  
                    height: 3px;                    
                    left:72px;
                    top:61px;
                    transform: rotate(-7deg);
                    background: rgba(0, 0, 0, .6);                          
                }    
                .xiantiao7{
                    width: 30px;  
                    height: 2px;                    
                    left: -15px;
                    top:40px;
                    background: rgba(0, 0, 0, .7);      
                }
                .xiantiao8{
                    width: 50px;  
                    height:1px;                    
                    left:15px;
                    top:20px;
                    transform: rotate(-18deg);
                    background: rgba(0, 0, 0, 1);                          
                } 
                .xiantiao9{
                    width: 50px;  
                    height: 1px;                    
                    left:15px;
                    top:58px;
                    transform: rotate(20deg);
                    background: rgba(0, 0, 0, 1);                          
                }                 
                .boli{
                    position: absolute;
                } 
                .boli1{
                    width: 20px;  
                    height: 15px;                    
                    left: 50px;    
                    top:32px;                    
                    background: rgba(0, 0, 0, .5);                                    
                }    
                .boli2{
                    width: 20px;  
                    height: 15px;                    
                    left: 30px;    
                    top:32px;                    
                    background: rgba(0, 0, 0, .4);                                       
                }    
                .boli3{
                    width: 12px;  
                    height: 12px;                    
                    left: 90px;    
                    z-index: 10000;
                    top:35px;    
                    border: 2px solid #333;
                    border-radius: 50%;                
                    background: rgba(0, 0, 0, 1);                                   
                    background: #fff;       
                    z-index: 999999;                          
                }                
                .boli4{
                    width: 15px;  
                    height: 20px;                    
                    left: 20px;    
                    top:30px;    
                    // border-radius: 40%;                
                    background: rgba(0, 0, 0, .2);                                   
                }     
                .boli5{
                    width: 18px;  
                    height: 20px;                    
                    left: 2px;    
                    top:30px;    
                    border-radius: 30%;                
                    background: rgba(0, 0, 0, 1);                                   
                }     
                .boli6{
                    width: 15px;  
                    height: 15px;                    
                    left: 125px;    
                    top:32px;    
                    border-radius: 50%;                
                    background: rgba(0, 0, 0, 1);                                   
                }                                                                                                                                          
            }
        }        
    }
}

</style>