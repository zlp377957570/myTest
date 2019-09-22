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
        server = [
            {
                name:'意外保护',
                isHas:true,
                isSelect:false,
                values:[
                    {
                        name:'意外保障服务',
                        checked:false,
                        count:1,                    
                        price:299
                    },{
                        name:'碎屏保障服务',
                        checked:false,
                        count:1,                    
                        price:159
                    }
                ]             
            },
            {
                name:'延长保修',
                isHas:true,   
                isSelect:false,                                 
                values:[
                    {
                        name:'延长保修服务',
                        checked:false,     
                        count:1,                                   
                        price:99
                    }
                ]    
            }
        ]

        choose = [
            {
                name:'透明果冻色CC单肩包',
                price:19,
                original_price:99,       
                isSelect:false,                         
                valList:[
                    {
                        src:'https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg',
                        color:'荧光粉',
                        count:1,
                        checked:true                          
                    },
                    {
                        src:'https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg',
                        color:'荧光绿',
                        count:1,
                        checked:false                          
                    }                                    
                ]                

            }            
        ]

        set_meal = [
            {
                name:'标配',
                price:1799,
                original_price:0,  
                isSelect:true,                  
                values:[
                    {
                        name:'小米CC9 6GB+64GB',
                        price:1799,
                        original_price:0,                     
                        valList:[
                            {
                                src:'https://i8.mifile.cn/a1/pms_1562056107.03295989.jpg',
                                color:'白色恋人',
                                count:1,
                                checked:true                             
                            }                    
                        ]
                    }         
                ]
            },    
            {
                name:'照片打印机套装',
                price:2288,
                original_price:0,  
                isSelect:false,                  
                values:[
                    {
                        name:'小米CC9 6GB+64GB',
                        price:1799,
                        original_price:0,                     
                        valList:[
                            {
                                src:'https://i8.mifile.cn/a1/pms_1562056107.03295989.jpg',
                                color:'白色恋人',
                                count:1,
                                checked:true                             
                            }                    
                        ]
                    },            
                    {
                        name:'小米米家照片打印机',
                        price:489,
                        original_price:499,                     
                        valList:[
                            {
                                src:'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/906df61431e627a11c1e784256863cab.jpg',
                                color:'白色',
                                count:1,
                                checked:true                            
                            }                    
                        ]
                    }          
                ]
            },    
            {
                name:'+19元得果冻包',
                price:1818,
                original_price:0,      
                isSelect:false,                                   
                values:[
                    {
                        name:'小米CC9 6GB+64GB',
                        price:1799,
                        original_price:0,                     
                        valList:[
                            {
                                src:'https://i8.mifile.cn/a1/pms_1562056107.03295989.jpg',
                                color:'白色恋人',
                                count:1,
                                checked:true                             
                            }                    
                        ]
                    },
                    {
                        name:'透明果冻色CC单肩包',
                        price:99,
                        original_price:0,                
                        valList:[
                            {
                                src:'https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg',
                                color:'荧光粉',
                                count:1,
                                checked:true                          
                            },
                            {
                                src:'https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg',
                                color:'荧光绿',
                                count:1,
                                checked:false                          
                            }                                    
                        ]                
        
                    }            
                ]
            }
        ]
        gift = [
            {
                name:'小米CC9 荧光色高透果冻保护壳',
                price:0,
                original_price:49,
                valList:[
                    {
                        src:'https://i1.mifile.cn/a1/pms_1562067017.28075121.jpg',
                        color:'荧光绿',
                        count:1,
                        checked:true     
                    },
                    {
                        src:'https://i8.mifile.cn/a1/pms_1562067029.54018331.jpg',
                        color:'荧光橙',
                        count:1,                            
                        checked:false     
                    }                     
                ]
            },
            {
                name:'小米CC 9&小米CC 9美图定制版 标准高透贴膜',
                price:0,
                original_price:19,
                valList:[
                    {
                        src:'https://i1.mifile.cn/a1/pms_1562067017.28075121.jpg',
                        color:'透明',
                        count:1,                            
                        checked:true
                    },                  
                ]
            }                
        ]     
        
        







{
    "XY":"通讯学院",
    "NJ":"大一",
    "YIYUE":51,
    "ERYUE":52,
    "SANYUE":53,
    "SIYUE":54,
    "WUYUE":65,
    "LIUYUE":66,
    "QIYUE":67,
    "BAYUE":78,
    "JIUYUE":79,
    "SHIYUE":80,
    "SHIYIYUE":91,
    "SHIERYUE":92
}








[{"name":"官方回复","src":"http://www.zlpones.com/imgs/mi/icon/小米.png","val":"越过山林，穿过薄雾，我愿意陪你等在湖海之畔，看月亮升起~感谢您对小米的支持 *★,°*:.☆(￣▽￣)/$:*.°★* "}]

[{"name":"标配","values":[{"name":"小米9全网通版6GB+128GB","price":2599,"original_price":2999,"src":"https://i8.mifile.cn/a1/pms_1565339466.57314633.jpg","color":"全息幻彩紫","count":1,"checked":true}]}]


    }
}
</script>

