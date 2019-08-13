<template>
    <transition name="rights" tag="div" class="aaa">
        <div class="detailHead" v-if="$store.getters.detailHeaderUp">
            <div class="content">
                <van-icon name="arrow-left" @click="detailBack"/>
                <span>{{title}}</span>
                <van-icon name="search" />
            </div>
        </div>
    </transition>    
</template>
<script>
import ls from '../../assets/js/ls.js'
import {mapGetters, mapMutations} from 'vuex'
import { setTimeout } from 'timers';
import { ELOOP } from 'constants';
export default {
    name:'detailHead',
    props:['title'],
    data(){
        return{

        }
    },
    mounted(){
        console.log(this.$store.getters.detailHeaderUp)
        setTimeout(()=>{
            this.$store.commit('chDetailHeaderUp',true)   
        },300)
    },    
    beforeRouteEnter (to, from, next) {
        next()

    },
    beforeRouteLeave (to, from, next) {
        console.log(to)
        console.log(from)
        // this.$store.commit('chDetailHeaderUp',false)   
        // setTimeout(()=>{
            next()
        // },300)
    },
    beforeRouteUpdate (to, from, next) {
        next()
    },      
    methods:{
        detailBack(){
            let type = ls.getItem('reviewType')
            if(type=='A'){
                this.$router.push({name:'reviewAll'})
                ls.setItem('reviewType','B')
            }else if(type=='B'){
                this.$router.push({name:'product_detail'})
                // this.$router.go(-1)
            }else{
                // this.$router.push({name:'product_detail'})
                this.$router.go(-1)
            }
            
        }
    },    
}
</script>
<style lang="less" scoped>
    .detailHead{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 50px;
        background: #f2f2f2;
        color: #666;  
        font-size: .32rem;
        z-index: 1000;
        .content{
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: space-between;
            padding: 0 12px;
            align-items: center;
            i{
                color: #acacac;
                font-weight: 100;
            }
            .van-icon-arrow-left{
                font-size: .49rem;
            }
            .van-icon-search{
                font-size: .52rem;
            }
        }
    }
    .rights-enter,.rights-leave-to{
        transform:  translateY(-50px);     
    }       
    .rights-enter-active,.rights-leave-active{
        transition: all .3s;
    }       
</style>


