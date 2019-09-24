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

        // imgList = [
        //     {
        //         "name":"视频",               
        //         "srcList":{
        //             "poster":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1541da85ac8b204056374641eee24726.jpg",
        //             "src":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7a2e31bf18e8fb5abd2a32ea93f0d46b.mp4",
        //         }
        //     },
        //     {
        //         "name":"图片",              
        //         "srcList":[
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9a64a1485edb3bc5bc104c8ad740a7ee.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d333ce64cd8596317682ccf3f696905.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4bc41965e7227da1050f142ebb0be01a.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/753ec2a34e36677d682279e0411838a6.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cce59cb9a7d19f98f087414af1b741dc.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/508b18122d3516ba882186add174316b.jpg"
        //         ]                
        //     }
        // ]

        // imgList = [
        //     {
        //         "name":"视频",               
        //         "srcList":{
        //             "poster":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1541da85ac8b204056374641eee24726.jpg",
        //             "src":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7a2e31bf18e8fb5abd2a32ea93f0d46b.mp4",
        //         }
        //     },
        //     {
        //         "name":"图片",              
        //         "srcList":[
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/64cd03b47a01e872f23f8f580a5617c7.png",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f4692898663163db196a5bb40675cdd6.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ca903ca7d3e51b0123ebd1135c763bcc.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7235d78a7d25d6e52f3c5044ec0540f0.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7cf307c4dd1d061e6add35d99f6f4387.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8be40701a99f707983acf41b1e8440f5.jpg"
        //         ]                
        //     }
        // ]

        // imgList = [
        //     {
        //         "name":"视频",               
        //         "srcList":{
        //             "poster":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1541da85ac8b204056374641eee24726.jpg",
        //             "src":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7a2e31bf18e8fb5abd2a32ea93f0d46b.mp4",
        //         }
        //     },
        //     {
        //         "name":"图片",              
        //         "srcList":[
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9af67dedf4ff1d1d87261a03a4e59431.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7c975765599e33f26c490fec077180f9.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/efa148be3e7b0dd74d565e99fc4dd52a.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/30da64d44d5d0d5a3fa04a750f56c8c4.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/a635a1c09ec011d14f355da35e3491b4.jpg",
        //             "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/977df3a4eaacfb6190d646892ea0670b.jpg"
        //         ]                
        //     }
        // ]




       imgList = [
            {
                "name":"视频",               
                "srcList":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7a2e31bf18e8fb5abd2a32ea93f0d46b.mp4"
            },
            {
                "name":"图片",              
                "srcList":[
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9a64a1485edb3bc5bc104c8ad740a7ee.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d333ce64cd8596317682ccf3f696905.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4bc41965e7227da1050f142ebb0be01a.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/753ec2a34e36677d682279e0411838a6.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cce59cb9a7d19f98f087414af1b741dc.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/508b18122d3516ba882186add174316b.jpg"
                ]                
            }
        ]

        imgList = [
            {
                "name":"视频",               
                "srcList":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7a2e31bf18e8fb5abd2a32ea93f0d46b.mp4"
            },
            {
                "name":"图片",              
                "srcList":[
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/64cd03b47a01e872f23f8f580a5617c7.png",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f4692898663163db196a5bb40675cdd6.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ca903ca7d3e51b0123ebd1135c763bcc.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7235d78a7d25d6e52f3c5044ec0540f0.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7cf307c4dd1d061e6add35d99f6f4387.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8be40701a99f707983acf41b1e8440f5.jpg"
                ]                
            }
        ]

        imgList = [
            {
                "name":"视频",               
                "srcList":"https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7a2e31bf18e8fb5abd2a32ea93f0d46b.mp4"
            },
            {
                "name":"图片",              
                "srcList":[
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9af67dedf4ff1d1d87261a03a4e59431.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7c975765599e33f26c490fec077180f9.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/efa148be3e7b0dd74d565e99fc4dd52a.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/30da64d44d5d0d5a3fa04a750f56c8c4.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/a635a1c09ec011d14f355da35e3491b4.jpg",
                    "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/977df3a4eaacfb6190d646892ea0670b.jpg"
                ]                
            }
        ]

// 小米CC9e 6GB+64GB 白色恋人 (白色)
// 小米CC9e 6GB+64GB 白色恋人 (白色)
// 小米CC9e 4GB+64GB 白色恋人 (白色)


            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 白色恋人 (白色)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 白色恋人 (白色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 白色恋人 (白色)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 白色恋人 (白色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 白色恋人 (白色)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 白色恋人 (白色)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 白色恋人 (白色)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 白色恋人 (白色)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]

// 小米CC9e 4GB+64GB 深蓝星球 (蓝色)

            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 深蓝星球 (蓝色)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 深蓝星球 (蓝色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 深蓝星球 (蓝色)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 深蓝星球 (蓝色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 深蓝星球 (蓝色)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 深蓝星球 (蓝色)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 深蓝星球 (蓝色)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 深蓝星球 (蓝色)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]

//小米CC9e 4GB+64GB 暗夜王子 (深空灰)

            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 暗夜王子 (深空灰)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 暗夜王子 (深空灰)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 暗夜王子 (深空灰)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 暗夜王子 (深空灰)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 暗夜王子 (深空灰)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 暗夜王子 (深空灰)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 暗夜王子 (深空灰)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 暗夜王子 (深空灰)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]



// +10元得18W快充
// +10元得18W快充
// +10元得18W快充
// +10元得18W快充
            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 白色恋人 (白色)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 白色恋人 (白色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 白色恋人 (白色)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 白色恋人 (白色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 白色恋人 (白色)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 白色恋人 (白色)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 白色恋人 (白色)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 白色恋人 (白色)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]

// 小米CC9e 4GB+64GB 深蓝星球 (蓝色)

            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 深蓝星球 (蓝色)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 深蓝星球 (蓝色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 深蓝星球 (蓝色)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 深蓝星球 (蓝色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 深蓝星球 (蓝色)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 深蓝星球 (蓝色)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 深蓝星球 (蓝色)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 深蓝星球 (蓝色)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]

//小米CC9e 4GB+64GB 暗夜王子 (深空灰)

            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 暗夜王子 (深空灰)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 暗夜王子 (深空灰)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 暗夜王子 (深空灰)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 暗夜王子 (深空灰)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 暗夜王子 (深空灰)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 暗夜王子 (深空灰)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 暗夜王子 (深空灰)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 暗夜王子 (深空灰)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"18W电源适配器 白色",
                    "price":10,
                    "original_price":29.9,                                  
                    "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                    "count":1,
                    "color":"白色",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"18W电源适配器 白色",
                            "price":10,
                            "original_price":29.9,                                  
                            "src":"https://i8.mifile.cn/v1/a1/53564743-bf11-1c03-2eb4-17d23cf2bd0f.webp",
                            "count":1,
                            "color":"白色",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                }                  
            ]


// +19元得果冻包
// +19元得果冻包
// +19元得果冻包
            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 白色恋人 (白色)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 白色恋人 (白色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 白色恋人 (白色)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 白色恋人 (白色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 白色恋人 (白色)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 白色恋人 (白色)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 白色恋人 (白色)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                    "count":1,
                    "color":"白色恋人（白色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 白色恋人 (白色)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074206.26381851.jpg",
                            "count":1,
                            "color":"白色恋人（白色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]

// 小米CC9e 4GB+64GB 深蓝星球 (蓝色)

            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 深蓝星球 (蓝色)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 深蓝星球 (蓝色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 深蓝星球 (蓝色)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 深蓝星球 (蓝色)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 深蓝星球 (蓝色)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 深蓝星球 (蓝色)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 深蓝星球 (蓝色)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                    "count":1,
                    "color":"深蓝星球（蓝色）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 深蓝星球 (蓝色)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074209.74891165.jpg",
                            "count":1,
                            "color":"深蓝星球（蓝色）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]

//小米CC9e 4GB+64GB 暗夜王子 (深空灰)

            set_meal = [
                {
                    "name":"小米CC9e 4GB+64GB 暗夜王子 (深空灰)",
                    "price":1299,
                    "original_price":1299,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+64GB 暗夜王子 (深空灰)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+64GB 暗夜王子 (深空灰)",
                    "price":1299,
                    "original_price":1399,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+64GB 暗夜王子 (深空灰)",
                            "price":1299,
                            "original_price":1399,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 6GB+128GB 暗夜王子 (深空灰)",
                    "price":1599,
                    "original_price":1599,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 6GB+128GB 暗夜王子 (深空灰)",
                            "price":1599,
                            "original_price":1599,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]
            set_meal = [
                {
                    "name":"小米CC9e 4GB+128GB 暗夜王子 (深空灰)",
                    "price":1399,
                    "original_price":1499,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                    "count":1,
                    "color":"暗夜王子（深空灰）",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"小米CC9e 4GB+128GB 暗夜王子 (深空灰)",
                            "price":1399,
                            "original_price":1499,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562074212.64435291.jpg",
                            "count":1,
                            "color":"暗夜王子（深空灰）",                        
                            "index":0,                            
                            "checked":true                           
                        }                        
                    ]                         
                },
                {
                    "name":"透明果冻色CC单肩包  荧光粉",
                    "price":19,
                    "original_price":99,                                  
                    "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                    "count":1,
                    "color":"荧光粉",                        
                    "index":0,                            
                    "checked":true,
                    "values":[
                        {
                            "name":"透明果冻色CC单肩包  荧光粉",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072866.03711600.jpg",
                            "count":1,
                            "color":"荧光粉",                        
                            "index":0,                            
                            "checked":true                           
                        },
                        {
                            "name":"透明果冻色CC单肩包  荧光绿",
                            "price":19,
                            "original_price":99,                                  
                            "src":"https://i8.mifile.cn/a1/pms_1562072869.14856428.jpg",
                            "count":1,
                            "color":"荧光绿",                        
                            "index":1,                            
                            "checked":false                           
                        }                                                 
                    ]                         
                }                  
            ]





            server = [
                {
                    name:'意外保护',
                    price:59,
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
                            price:99
                        },{
                            name:'碎屏保障服务',
                            text:'手机意外碎屏',                        
                            checked:false,
                            count:1,                    
                            price:59
                        }
                    ]             
                },
                {
                    name:'延长保修',
                    price:29,
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
                            price:29
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
                    val:'骁龙665'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png',
                    name:'双摄像头',
                    val:'4800万+800+200万像素'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png',
                    name:'超大屏',
                    val:'6.088英寸'
                },      
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png',
                    name:'屏幕分辨率',
                    val:'1560×720'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png',
                    name:'极速畅玩',
                    val:'6GB'
                },
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png',
                    name:'存储容量',
                    val:'64GB'
                },   
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png',
                    name:'普通厚度',
                    val:'8.475mm'
                },                   
                {
                    src:'https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png',
                    name:'超长待机',
                    val:'4030mAh'
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

