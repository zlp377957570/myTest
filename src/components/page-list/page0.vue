<template>
    <div class="pages">
        <div class="aaa">
            <button disabled="disabled">00000000000000000000000</button>
        </div>
    </div>
</template>
<script>
export default {
    name:'page0',
    data(){
        return{

        }
    },
    methods:{
    }
}
</script>
<style lang="less" scoped>
    .pages{
        width: 375px;
        height: 500px;
        background: red;
        top:0px;
        left: 0px;
        position: relative;

        .aaa{
            top: 0;
            left: 37.5px;
            position: absolute;
            width: 300px;
            height:300px;
            background: green;        
        }
    }
</style>


