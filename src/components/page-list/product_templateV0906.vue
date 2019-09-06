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

        //  ~~~~~~~~~~~~~~~~~~~~~~~     版本1    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~       
            set_meal = [
                {
                    "name":"标配", 
                    "price":3699,
                    "original_price":3699,                                       
                    "isSelect":true,                   
                    "values":[
                        {
                            "name":"小米9 全网通版 8GB+256GB 透明版",
                            "price":3699,
                            "original_price":3699,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1553001921.97126644.jpg",
                            "count":1,
                            "index":0,                            
                            "checked":true,
                            "valList":[]                         
                        }                    
                    ]
                }         
            ]
            set_meal = [
                {
                    "name":"标配", 
                    "price":2599,     
                    "original_price":2599,                                     
                    "isSelect":true,                   
                    "values":[
                        {
                            "name":"小米CC9 美图定制版 8GB+256GB",
                            "price":2599,
                            "original_price":2599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg",
                            "count":1,
                            "index":0,                            
                            "checked":true,
                            "valList":[]                         
                        }                    
                    ]
                },
                {
                    "name":"+299元得499元星芒钻幕壳",      
                    "price":2898,
                    "original_price":3098,                    
                    "isSelect":true,                                        
                    "values":[
                        {
                            "name":"小米CC9 美图定制版 8GB+256GB",
                            "price":2599,
                            "original_price":2599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg",
                            "count":1,
                            "index":0,
                            "checked":true,
                            "valList":[]                                                          
                        },    
                        {
                            "name":"CC9星芒钻幕壳 小米CC 9 满天星",
                            "price":299,
                            "original_price":499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg",
                            "count":1,
                            "index":0,                            
                            "checked":true,
                            "valList":[]                                                            
                        },                                         
                    ]
                }                
            ]



        //  ~~~~~~~~~~~~~~~~~~~~~~~     版本2    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~        
            set_meal = {
                "name":"小米9 全网通版 8GB+256GB 透明版", 
                "type":"标配",
                "price":3699,
                "original_price":3699,                                       
                "isSelect":true,                   
                "values":[
                    {
                        "name":"小米9 全网通版 8GB+256GB 透明版",
                        "price":3699,
                        "original_price":3699,                                  
                        "src":"https://i8.mifile.cn/a1/pms_1553001921.97126644.jpg",
                        "count":1,
                        "index":0,                            
                        "checked":true,
                        "valList":[]                         
                    }                    
                ]
            }     

            set_meal = {
                "name":"小米CC9 6/64+CC星芒钻幕壳（满天星）", 
                "type":"套装",
                "price":2098,     
                "original_price":2298,                                     
                "isSelect":true,                   
                "values":[
                    {
                        "name":"小米CC9 6GB+64GB 白色恋人",
                        "price":1799,
                        "original_price":1799,                                  
                        "src":"https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg",
                        "count":1,
                        "index":0,                            
                        "checked":true,
                        "valList":[]                         
                    },    
                    {
                        "name":"CC9星芒钻幕壳 小米CC 9 满天星",
                        "price":299,
                        "original_price":499,                                  
                        "src":"https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg",
                        "count":1,
                        "index":0,                            
                        "checked":true,
                        "valList":[]                                                            
                    }                    
                ]
            }                                        
        //  ~~~~~~~~~~~~~~~~~~~~~~~     版本3    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            set_meal = [
                {
                    "name":"小米9 全网通版 8GB+256GB 透明版",
                    "price":3699,
                    "original_price":3699,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1553001921.97126644.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                         
                }                    
            ]

            set_meal = [
                {
                    "name":"小米CC9 6GB+64GB 白色恋人",
                    "price":1799,
                    "original_price":1799,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                         
                },    
                {
                    "name":"CC9星芒钻幕壳 小米CC 9 满天星",
                    "price":299,
                    "original_price":499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg",
                    "count":1,
                    "index":0,                            
                    "checked":true,
                    "valList":[]                                                            
                }                    
            ]
    }
}
</script>

