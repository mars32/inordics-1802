<template>

<div class="detail">
    <div class="detail_img">
        <img :src="item['PHOTO'][0]"/>
    </div>

    <div class="detail_name">{{ item['NAME'] }}</div>

    <div class="detail_vender-code">Артикул: {{ id }}</div>

    <div class="detail_price">{{ item['PRICE'] }} {{ item['CURRENCY'] }}</div>

    <div class="detail_desc">{{ item['DESCRIRTION'] }}</div>

    <div class="detail_size">
    
        <span> Размеры</span>

        <div class="detail_size-sizes">
            <span v-for="(size, id) in item['SIZE']" :key="`size_${id}`"> {{ size }} </span>
        </div>
    
    </div>

    <div class="detail_button">Добавить в корзину</div>


</div>

</template>

<script>
    export default{
        name:"Detail",
        props: {
            id: String
        },
        data(){
            return {
                item: {}
            };
        },
        mounted(){
            fetch(
                'http://localhost/htdocs/detail.php',
                        {
                            method: 'POST',
                            headers: {
                                'Accept' : 'application/json',
                                'Content-Type' : 'application/json'
                            },
                            mode: 'cors',
                            body:  JSON.stringify({id: this.id})
                        }
            ).then(res => res.json()).then(res => {
                console.log(res);

                this.item = res;

            }).catch(err => {});
        }
    }
</script>

<style scooped>

    .detail{
        display: flex;
        flex-direction: column;
        align-items: center;

    }
    .detail_button{
        
    }


</style>