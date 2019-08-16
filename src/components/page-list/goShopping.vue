<template>
    <div class="goShopping">
        <detailHead :title="'购物车'"></detailHead>
        <div class="shopping">
            <div class="shopp">
                <div class="shoppBlock" v-for="(spb,sp) in sl" :key="sp">
                    <div class="select">
                        <van-icon name="checked" />
                    </div>
                    <div class="block" v-for="(sp,s) in spb.si_set_meal" :key="s">
                        <div class="itemBlock" v-for="(itbk,it) in sp.values" :key="it">
                            <div class="item" v-for="(im,i) in itbk.valList" :key="i">
                                <div class="img">
                                    <img :src="im.src" alt="">
                                </div>
                                <div class="text">
                                    <h4>{{itbk.name}}</h4>
                                    <span>{{im.color}}</span>
                                    <p>{{im.price}}</p>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import ls from '../../assets/js/ls.js'
import { Icon } from 'vant';
import detailHead from './detailHead.vue'
export default {
    name:'goShopping',
    data(){
        return{
            sl:{}
        }
    },
    components:{
        detailHead
    }, 
    created(){
        this.init()
    },
    mounted(){
    },
    methods:{
        init(){
            let url = this.HOST + '/detail/getShopping.php'
            this.$axios.post(url,{}).then(response=> {
                console.log(response.data)
                this.sl = response.data.shoppingList          
                console.log(this.sl)             
            }).catch(error=>{

            })              
        }
        
    }
}
</script>

<style lang="less" scoped>
    .goShopping{
        width:7.5rem;
        .shopping{
            position: relative;
            top:50px;
            width: 100%;
            border-top: 1px solid #aaa;
            font-size: .29rem;
            .shopp{
                .shoppBlock{
                    .select{
                        display: inline-block;
                        width: 50px;   
                        vertical-align: top;
                    }
                    .block{
                        display: inline-block;
                        .itemBlock{
                            .item{
                                .img{
                                    display: inline-block;
                                    vertical-align: top;
                                    img{
                                        width: 80px;
                                        height: 80px;                                             
                                    }
                                }
                                .text{
                                    width: 80px; 
                                    display: inline-block;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
</style>

