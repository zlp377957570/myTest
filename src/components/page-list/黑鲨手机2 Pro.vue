<template>
    
</template>
<script>
export default {
    "name":"dataTemplate",
    data(){
        return{

        }
    },
    created(){

        imgList = [
            "",
            "",
            "",
            "",
            "",
            "",
        ]
        [
            {
                "name":"视频",               
                "srcList":{
                    "poster":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c2e9a7fc809f7aeac30bf538baf8f156.jpg",
                    "src":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5f51a274a73db915a9623ccdfd35f678.mp4",
                }
            },
            {
                "name":"图片",              
                "srcList":[
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/56e26d8a4d08ee4710dbd7b892420c85.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2cc38dd9ea850f6ebc034eab38ae5536.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c3009bfc669f90a767244a239c6b3ee8.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/81f902831594dd974e6c0c1497ec9910.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ba995e6bb6fb1000c6efb8cb28d79793.jpg"
                ]                
            }
        ]
            set_meal = [
                {
                    "name":"黑鲨游戏手机2 Pro 12GB+256GB 冰魄灰",
                    "price":3499,
                    "original_price":3499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1564309745.17776332.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                         
                }                    
            ]

            set_meal = [
                {
                    "name":"黑鲨游戏手机2 Pro 12GB/256GB+黑鲨移动电源套装",
                    "price":3499,
                    "original_price":3499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1564309745.17776332.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                         
                },    
                {
                    "name":"黑鲨双向快充移动电源 黑色",
                    "price":199,
                    "original_price":199,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1566870223.32241409.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                                                            
                }                    
            ]

            set_meal = [
                {
                    "name":"黑鲨2 Pro 12GB/256GB+黑鲨双翼左手柄套装",
                    "price":3499,
                    "original_price":3499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1564309745.17776332.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                         
                },    
                {
                    "name":"黑鲨双翼手柄-左手 黑色",
                    "price":90.1,
                    "original_price":179,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1538124791.92791755.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                                                            
                },    
                {
                    "name":"黑鲨双翼手柄 左手支架 黑色",
                    "price":9.9,
                    "original_price":9.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/b1cea450-4f99-b685-aab2-147e8ce6e31d.webp",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                                                            
                }                   
            ]


            // --------------------------------------------------------------------------
            // --------------------------------------------------------------------------
            set_meal = [
                {
                    "name":"黑鲨游戏手机2 Pro 12GB+256GB 电鸣黑",
                    "price":3499,
                    "original_price":3499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1564309721.25069397.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                         
                }                    
            ]

            set_meal = [
                {
                    "name":"黑鲨游戏手机2 Pro 12GB/256GB+黑鲨移动电源套装",
                    "price":3499,
                    "original_price":3499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1564309721.25069397.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                         
                },    
                {
                    "name":"黑鲨双向快充移动电源 黑色",
                    "price":199,
                    "original_price":199,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1566870223.32241409.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                                                            
                }                    
            ]

            set_meal = [
                {
                    "name":"黑鲨2 Pro 12GB/256GB+黑鲨双翼左手柄套装",
                    "price":3499,
                    "original_price":3499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1564309721.25069397.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                         
                },    
                {
                    "name":"黑鲨双翼手柄-左手 黑色",
                    "price":90.1,
                    "original_price":179,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1538124791.92791755.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                                                            
                },    
                {
                    "name":"黑鲨双翼手柄 左手支架 黑色",
                    "price":9.9,
                    "original_price":9.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/b1cea450-4f99-b685-aab2-147e8ce6e31d.webp",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                                                            
                }                   
            ]






            server = [
                {
                    name:'意外保护',
                    price:159,
                    count:1,
                    src:'https://i1.mifile.cn/a1/pms_1550560434.76682404.jpg',
                    isHas:true,
                    isSelect:false,
                    a_srcIndex:0,
                    b_srcIndex:1,
                    c_srcIndex:2,   
                    values:[
                        {
                            name:'意外保障服务',
                            text:'手机意外碎屏/进水/碾压等损坏',
                            checked:false,
                            count:1,                    
                            price:299
                        },{
                            name:'碎屏保障服务',
                            text:'手机意外碎屏',                        
                            checked:false,
                            count:1,                    
                            price:159
                        }
                    ]             
                },
                {
                    name:'延长保修',
                    price:99,
                    count:1,
                    src:'https://i1.mifile.cn/a1/pms_1550560434.76682404.jpg',                    
                    isHas:true,   
                    isSelect:false,    
                    a_srcIndex:3,
                    b_srcIndex:1,
                    c_srcIndex:2,                                                 
                    values:[
                        {
                            name:'延长保修服务',
                            text:'厂保延一年，性能故障免费维修',                        
                            checked:false,     
                            count:1,                                   
                            price:99
                        }
                    ]    
                }
            ]

            gift = [      
                {
                    name:'无线车充或无线充电宝（赠品二选一）',
                    values:[
                        {
                            "name":"小米无线充电宝10000mAh",
                            "price":0,
                            "original_price":149,                            
                            "src":"https://i8.mifile.cn/a1/pms_1550584503.83515033.jpg",
                            "color":"黑色",
                            "count":1,
                            "checked":true
                        },
                        {
                            "name":"小米无线车充",
                            "price":0,
                            "original_price":169,                            
                            "src":"https://i1.mifile.cn/a1/pms_1550588698.58663947.jpg",
                            "color":"黑色",
                            "count":1,
                            "checked":false
                        }                          
                    ]
                }               
            ]
         //小米9
            iconListAll = [
                {name:'CPU',val:'骁龙855八核'},
                {name:'CPU主频',val:'最高2.84GHz'},
                {name:'后置摄像头',val:'4800万+1200万+1600万像素'},
                {name:'前置摄像头',val:'2000万像素'},
                {name:'屏幕',val:'三星AMOLED 水滴全面屏'},
                {name:'屏幕尺寸',val:'6.39英寸'},
                {name:'屏幕分辨率',val:'2340×1080'},
                {name:'运行内存',val:'8GB'},
                {name:'存储容量',val:'128GB'},
                {name:'NFC',val:'支持'},
                {name:'红外遥控',val:'支持'},
                {name:'独立AI键',val:'支持'},
                {name:'指纹识别',val:'第五代屏幕指纹'},
                {name:'机身厚度',val:'7.61mm'},
                {name:'电池容量',val:'3300mAh'},
                {name:'电池充电',val:'无线闪充+有线闪充'},
                {name:'网络类型',val:'4G全网通'},
                {name:'网络模式',val:'双卡双待'}                                                  
            ]
                 //黑鲨手机2 Pro
            iconListAll = [
                {name:'CPU',val:'骁龙855+'},
                {name:'CPU主频',val:'最高2.96GHz'},
                {name:'后置摄像头',val:'4800万+1200万'},
                {name:'前置摄像头',val:'2000万像素'},
                {name:'屏幕',val:'三星AMOLED全面屏'},
                {name:'屏幕尺寸',val:'6.39英寸'},
                {name:'屏幕分辨率',val:'2340×1080'},
                {name:'运行内存',val:'12GB'},
                {name:'存储容量',val:'128GB'},
                {name:'指纹识别',val:'屏幕指纹'},
                {name:'电池容量',val:'4000mAh'},
                {name:'网络类型',val:'4G全网通'},
                {name:'网络模式',val:'双卡双待'}                                                  
            ]       
            iconList = [
                {
                    src:'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png',
                    name:'CPU',
                    val:'骁龙855+'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png',
                    name:'双摄像头',
                    val:'4800万+1200万像素'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png',
                    name:'超大屏',
                    val:'6.39英寸'
                },      
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png',
                    name:'屏幕分辨率',
                    val:'2340×1080'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png',
                    name:'极速畅玩',
                    val:'12GB'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png',
                    name:'存储容量',
                    val:'128GB'
                },   
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png',
                    name:'超长待机',
                    val:'4000mAh'
                },    
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/d1b67a407fb2a1ed42c2c0ce15af3318.png',
                    name:'运营商网络',
                    val:'4G全网通'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/bfd5ba9ae72c365dee42db14dfae4b0f.png',
                    name:'网络模式',
                    val:'双卡双待'
                },                                                                       
            ]



installment = [
                {
                    name:'小米分期',
                    checked:true,
                    values:[
                        {
                            name:3,
                            rate:0.022,
                            checked:true,
                            val:true
                        },
                        {
                            name:6,
                            rate:0.039,
                            checked:false,
                            val:true
                        },
                        {
                            name:12,
                            rate:0.072,
                            checked:false,
                            val:true
                        },                                                        
                    ]
                },
                {
                    name:'花呗分期',
                    checked:false,
                    values:[
                        {
                            name:3,
                            rate:0.023,
                            checked:true,
                            val:true
                        },
                        {
                            name:6,
                            rate:0.045,
                            checked:false,
                            val:true
                        },
                        {
                            name:12,
                            rate:0.075,
                            checked:false,
                            val:true
                        },                                                        
                    ]
                }                   
            ]   
            
            promise = [
                {
                    name:'小米自营',
                    val:''
                },
                {
                    name:'小米发货',
                    val:'由小米发货'
                },
                {
                    name:'7天无理由退货',
                    val:''
                },
                {
                    name:'运费说明',
                    val:'由小米发货的商品，单笔满150元免运费;由第三方商家发货的商品，免运费;特殊商品需要单独收取运费，具体以实际结算金额为准；优惠券等不能抵扣运费金额;'
                }                                                
            ]     
            
            
// a1a1->> a:商品展示/b:详细参数，
         //1:第一种套图/类型下标，
         //a:普通图片/b:查看全部参数/c:轮播图，
         //1:第一种套图下每张图片下标
            [
                {
                    name:'商品介绍',
                    type:'a',
                    p_name:'小米9',
                    src:'http://www.zlpones.com/imgs/mi/height_imgList/',
                    values:[
                        {
                            type:'a',
                            index:1,
                            suffix:'webp',
                            length:3,
                            class:'',
                            style:''                           
                        },
                        {
                            type:'b',
                            index:2,
                            suffix:'webp',
                            length:13,
                            class:'',
                            style:''                         
                        },
                        {
                            type:'c',
                            index:3,
                            suffix:'webp',
                            length:6,
                            class:'carousel1',
                            style:'width:100%;height:250px;'                                                         
                        },    
                        {
                            type:'a',
                            index:4,
                            suffix:'webp',
                            length:7,
                            class:'',
                            style:''                         
                        }                                                                                                                                                            
                    ]
                }               
            ]

            heheight_list = [
                {
                    name:'商品介绍',
                    type:'a',
                    p_name:'黑鲨手机_Pro',
                    src:'http://www.zlpones.com/imgs/mi/height_imgList/',
                    values:[
                        {
                            type:'a',
                            index:1,
                            suffix:'webp',
                            length:3,
                            class:'',                            
                            style:''                           
                        },
                        {
                            type:'b',
                            index:2,
                            suffix:'webp',
                            length:12,
                            class:'',                            
                            style:''                           
                        },
                        {
                            type:'c',
                            index:3,
                            suffix:'webp',
                            length:3,
                            class:'',                            
                            style:'width:100%;height:100%;'                           
                        },    
                        {
                            type:'a',
                            index:4,
                            suffix:'webp',
                            length:36,
                            class:'',                            
                            style:''                           
                        }                                                                                                                                                            
                    ]
                }
            ]


    }
}
</script>

