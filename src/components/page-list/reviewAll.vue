<template>
    <div class="reviewAll">
        <detailHead :title="'商品评论'"></detailHead>
        <reviewAllBody></reviewAllBody>        
    </div>
</template>
<script>
import detailHead from './detailHead.vue'
import reviewAllBody from './reviewAllBody.vue'
import {mapGetters, mapMutations} from 'vuex'
import { setTimeout } from 'timers';
export default {
    name:'reviewAll',
    data(){
        return{

        }
    },
    components:{
        detailHead,
        reviewAllBody
    },
    mounted(){
    },            
    beforeRouteLeave (to, from, next) {
        this.$store.commit('chDetailHeaderUp',false)   
        setTimeout(()=>{
            next()
        },300)
    },    
}
</script>
<style lang="less" scoped>
.reviewAll{
    // width: 7.5rem;
    // height: 100%;
    // background: #fff;    
    // top:0px;
    // left: 0px;
    // position: relative;       
}
</style>


