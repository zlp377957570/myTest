<template>
    
</template>
<script>
export default {
    name:'dataTemplate',
    data(){
        return{

        }
    },
    created(){
        //分期公式  价格* 费率/分期数    2899*0.0222/3 = 21.45元
            installment = {
                title:'小米分期/花呗分期',
                name:'小米9 全网通版 6GB+128GB',
                price:2899,
                original_price:3099,                                  
                src:'https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg',
                color:'全息幻彩蓝',       
                values:[
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
                    },                    
                ]         
            }
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

            choose = [         
            ]



            set_meal = [
                {
                    values:[
                        {
                            name:'小米9 全网通版 6GB+128GB',
                            price:2599,
                            original_price:2999,                                  
                            src:'https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg',
                            color:'全息幻彩蓝',
                            count:1,
                            checked:true                             
                        }                    
                    ]
                }         
            ]
            set_meal = [
                {
                    values:[
                        {
                            name:'小米9 全网通版 6GB+128GB',
                            price:2599,
                            original_price:2999,                                    
                            src:'https://i8.mifile.cn/a1/pms_1565339466.57314633.jpg',
                            color:'全息幻彩紫',
                            count:1,
                            checked:true                             
                        }                    
                    ]
                }         
            ]

            set_meal = [
                {
                    values:[
                        {
                            name:'小米9 全网通版 6GB+128GB',
                            price:2599,
                            original_price:2999,                                     
                            src:'https://i8.mifile.cn/a1/pms_1565339450.93196576.jpg',
                            color:'深空灰',
                            count:1,
                            checked:true                             
                        }                    
                    ]
                }         
            ]

            set_meal = [
                {
                    values:[
                        {
                            name:'小米9 全网通版 8GB+128GB',
                            price:2999,
                            original_price:3299,                                  
                            src:'https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg',
                            color:'全息幻彩蓝',
                            count:1,
                            checked:true                             
                        }                    
                    ]
                }         
            ]
            set_meal = [
                {
                    values:[
                        {
                            name:'小米9 全网通版 8GB+128GB',
                            price:2999,
                            original_price:3299,                                  
                            src:'https://i8.mifile.cn/a1/pms_1565339466.57314633.jpg',
                            color:'全息幻彩紫',
                            count:1,
                            checked:true                             
                        }                    
                    ]
                }         
            ]

            set_meal = [
                {
                    values:[
                        {
                            name:'小米9 全网通版 8GB+128GB',
                            price:2999,
                            original_price:3299,                                  
                            src:'https://i8.mifile.cn/a1/pms_1565339450.93196576.jpg',
                            color:'深空灰',
                            count:1,
                            checked:true                             
                        }                    
                    ]
                }         
            ]

            set_meal = [
                {
                    values:[
                        {
                            name:'小米9 全网通版 8GB+256GB',
                            price:3699,
                            original_price:0,                                  
                            src:'https://i1.mifile.cn/a1/pms_1553001921.97126644.jpg',
                            color:'透明',
                            count:1,
                            checked:true                             
                        }                    
                    ]
                }         
            ]

            set_meal = [
                {
                    values:[
                        {
                            name:'小米9 全网通版 8GB+128GB',
                            price:2999,
                            original_price:3299,                                  
                            src:'https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg',
                            color:'全息幻彩蓝',
                            count:1,
                            checked:true                             
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
            
            iconList = [
                {
                    src:'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png',
                    name:'CPU',
                    val:'骁龙855八核'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png',
                    name:'三摄像头',
                    val:'4800万+1200万+1600万像素'
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
                    val:'6GB'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png',
                    name:'存储容量',
                    val:'128GB'
                },   
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png',
                    name:'普通厚度',
                    val:'7.61mm'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png',
                    name:'持久待机',
                    val:'3300mAh'
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



    }
}
</script>

