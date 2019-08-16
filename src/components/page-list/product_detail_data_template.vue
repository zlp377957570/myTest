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
                    name:'标配',
                    price:2999,
                    original_price:3299,    
                    isSelect:true,                  
                    values:[
                        {
                            name:'小米9 全网通版 8GB+128GB',
                            price:2999,
                            original_price:3299,                    
                            valList:[
                                {
                                    src:'https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg',
                                    color:'全息幻彩蓝',
                                    count:1,
                                    checked:true                             
                                }                    
                            ]
                        }         
                    ]
                }
            ]
            gift = [                         
            ]        
    }
}
</script>

