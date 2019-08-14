<template>
    <div class="goShopping">
        <detailHead :title="'购物车'"></detailHead>
        <div class="shopping">
            1111111111111
        </div>
    </div>
</template>
<script>
import ls from '../../assets/js/ls.js'
import detailHead from './detailHead.vue'
export default {
    name:'goShopping',
    data(){
        return{

        }
    },
    components:{
        detailHead
    },    
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
            // height: 50px;
            // background: #eee;
        }
    }
</style>

