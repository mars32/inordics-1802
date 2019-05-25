<template>

    <footer>

        <div>
            <h3 class="uppercase">Коллекции</h3>
            <nav>
                <span v-for="i in collections">
                    {{ i.name }}({{ i.count }})
                </span>
            </nav>
        </div>

        <div>
            <h3 class="uppercase">Магазин</h3>
            <nav>
                <span v-for="i in menu">
                    {{ i.name }}
                </span>
            </nav>
        </div>

    </footer>

</template>

<script>
    export default {
        name: "FooterVue",
        data() {

            return {
                collections: [
                    {
                        name: 'Женщинам',
                        count: 1725
                    },
                    {
                        name: 'Мужчинам',
                        count: 635
                    },
                    {
                        name: 'Детям',
                        count: 2514
                    },
                    {
                        name: 'Новинки',
                        count: 76
                    }
                ],
                menu: [
                    {
                        name: 'О нас'
                    },
                    {
                        name: 'Доставка'
                    },
                    {
                        name: 'Работай с нами'
                    },
                    {
                        name: 'Контакты'
                    }
                ]
            };
        }
    }
</script>

<style scoped>

    footer{
        display: flex;
        flex-direction: row;
        /*justify-content: space-between;*/
        margin: 20px;
    }

    footer > div{
        width: 33%;
        box-sizing: border-box;
    }

    footer > div:not(:first-child){
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    footer > div:not(:last-child){
        border-right: 1px solid lightgrey;
    }

    nav{
        display: flex;
        flex-direction: column;
    }

    nav > span{
        color: grey;
        margin-bottom: 10px;
    }

</style>