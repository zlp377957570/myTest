<template>
    <div class="reviewAllBody">
        <div></div>
        <div class="imgFilter">
            <span class="name">
                最热门
            </span>
            <span class="val">
                <i :class="select?'select':''" @click="select = !select"><svg t="1565605778580" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2266" width="200" height="200"><path d="M378.410667 850.450963C364.491852 850.450963 350.610963 845.293037 340.02963 834.939259L20.920889 523.529481C-0.279704 502.821926-0.279704 469.295407 20.920889 448.587852 42.121481 427.880296 76.48237 427.880296 97.682963 448.587852L378.410667 722.526815 925.75763 188.491852C946.958222 167.784296 981.319111 167.784296 1002.519704 188.491852 1023.720296 209.161481 1023.720296 242.688 1002.519704 263.395556L416.791704 834.939259C406.172444 845.293037 392.291556 850.450963 378.410667 850.450963L378.410667 850.450963Z" p-id="2267" fill="#ffffff"></path></svg></i>
                有图片
            </span>
        </div>
        <div class="block" v-for="(rbody,rb) in reviewAllBody" :key = "rb" @click="lookItemReply(rbody)">
            <div class="info">
                <span class="icon">
                    <img :src="rbody.reviewOnly.d_review_icon" alt="">
                </span>
                <span class="name">
                    <p>{{rbody.reviewOnly.d_review_name}}</p>
                    <span>{{rbody.reviewOnly.d_review_time}}</span>
                </span>
                <span class="zan">
                    <img src="@/assets/image/icon/超赞.png" alt="">超爱
                </span>
            </div>
            <div class="text">
                {{rbody.reviewOnly.d_review_text | lineFeed}}
            </div>
            <div class="imgList" v-show="rbody.imgListAll.length>0" :style="rbody.imgListAll.length>4?'width:100%':'width:80%'">
                <img v-show="img" :style="rbody.imgListAll.length<2?'width:auto;height:156px;margin:0 auto 10px;':''" v-for="(img,i) in rbody.imgListAll" :key="i" :src="img" alt="">
            </div>
            <div class="reply" v-show="rbody.replyList[0].icon!==''">
                <div class="itemReply" :index="re" :style="re<4?'display:block;':'display:none;'" v-for="(rep,re) in rbody.replyList" :key="re">
                    <img :src="rep.icon" alt="">
                    <i>{{rep.name}}</i>
                    {{rep.val}}
                </div>
                <div class="replyMore" v-show="rbody.replyList[0].icon!==''">
                    查看全部{{rbody.replyList.length}}条评论
                </div>
            </div>
        </div>        
    </div>
</template>

<script>
import ls from '../../assets/js/ls.js'
export default {
    name:'reviewAllBody',
    data(){
        return{
            reviewAllBody:'',
            select:true
        }
    },
    created(){
        this.init()
    },    
    mounted(){

    },
　　filters: {
        lineFeed(value) {
            let str = value.replace(/<br>/g," \r\n ")
            return str
　　　　}
　　},       
    methods:{
        init(){        
            // let routerName = ls.getItem('routerName')   
            let routerName = '小米9'
            console.log(routerName)    
            let url = this.HOST + '/detail/getDetailReviewAll.php'            
            if(routerName){
                this.$axios.post(url,routerName).then(response=> {
                    this.reviewAllBody = response.data.reviewListAll
                    console.log(response)
                    console.log(this.reviewAllBody)                    
                }).catch(error=>{
                })        
            }
            console.log(this.$store.getters.detailHeaderUp)
        },
        lookItemReply(values){
            console.log(values)
            this.$router.push({name:'review',params:values})
        }        
    }
}
</script>

<style lang="less" scoped>
    .reviewAllBody{
        position: relative;
        top:50px;
        font-size: .25rem;
        .imgFilter{
            font-size: .25rem;
            display: flex;
            justify-content: space-between;
            padding: 18px 20px;
            background: #fafafa;
            .name{
                color: #f56600;
            }
            .val{
                color: #aaa;
                i{
                    background: #eee;
                    display: inline-block;
                    width:16.66px;
                    height: 15.66px;
                    border: 1px solid #ddd;
                    border-radius: 2px;
                    vertical-align: top;
                    margin-right: 5px;
                    svg{
                        vertical-align: middle;
                        width:12px;
                        height: 11px;                    
                    }
                }
                .select{
                    background: #f56600;
                    border: 1px solid #f56600;
                }
            }
        }
        .block{
            text-align: left;
            background: #fff;
            padding: 20px 0;
            border-bottom: 1px solid #eee;
            span{
                line-height: 20px;
            }
            .info{
                padding: 0 20px;                
                display: flex;
                width: 100%;
                justify-content: space-between;
                text-align: left;
                color: rgba(0,0,0,.54);
                margin-bottom: 5px;
                .icon{
                    img{
                        display: block;
                        width: 42px;
                        height: 42px;                            
                        border-radius: 50%;
                        margin-top: -5px;
                    }
                }
                .name{
                    margin-left: 12px;
                    width: 80%;
                    p{
                        color: rgba(0,0,0,.87);
                    }
                    span{
                        display: block;
                        font-size: .24rem;
                        margin-top: -5px;
                    }
                }
                .zan{
                    display: inline-flex;
                    align-items: center;                      
                    text-align: right;
                    white-space: nowrap;
                    color: #f56600;
                    font-size: .23rem;
                    img{
                        margin-right: 3px;
                        margin-top: -2px;
                        width: 20px;
                        height: 20px;     
                    }
                }
            }
            .text{
                padding: 0px 20px;
                margin-top: -10px;
                line-height: 18px;
                // white-space: pre-wrap;
                white-space:pre-line;
                // touch-action: pan-y;
            }
            .imgList{
                padding: 5px 20px 0px;
                display: flex;
                justify-content: flex-start;
                width: 80%;
                flex-wrap: wrap;
                img{
                    margin: 0px 5px 10px 0;
                    display: inline-block;
                    width: 85px;
                    height: 85px;                                                
                }
            }
            .reply{
                margin: 0 15px;
                font-size: .23rem;
                overflow: hidden;
                text-overflow: ellipsis;                    
                background: #f2f2f2;
                line-height: 20px;
                padding: 10px 8px;
                i{
                    color: #f56600;
                }
                .itemReply{
                    padding: 2px 0px;     
                    img{
                        display: inline-block;
                        border-radius: 10px;
                        vertical-align: top;
                        margin-right: 7px;
                        width: 17px;
                        height: 17px;
                    }       
                }
                .replyMore{
                    margin-top: 10px;
                    padding: 10px 0 0px;
                    line-height: 30px;
                    border-top: 1px solid #ddd;
                    text-align: center;
                    color: #f56600;
                    font-size: .29rem
                }
            }
        }       
              
    }
</style>


