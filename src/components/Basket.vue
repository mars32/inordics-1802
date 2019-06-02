<template>

    <div class="basket">
        <h2>Ваша корзина</h2>
        <h3>Товары резервируются на ограниченное время</h3>
    

        <div class="basket_table">
            <div class="basket_table-head">
                <div class="basket_table-head_item">Фото</div>
                <div class="basket_table-head_item biggest">Наименование</div>
                <div class="basket_table-head_item">Размер</div>
                <div class="basket_table-head_item">Количество</div>
                <div class="basket_table-head_item">Стоимость</div>
                <div class="basket_table-head_item">Удалить</div>

            </div>
            <div class="basket_table-body">
                <div class="basket_table-body_item">Фото</div>
                <div class="basket_table-body_item biggest">
                    <div class="title">Название</div>
                    <div class="vender_code">Артикул</div>
                </div>
                <div class="basket_table-body_item">РАзмер</div>
                <div class="basket_table-body_item">
                    <input type="number" name="count" value="0"/>
                    <div class="control">
                        <span class="plus"></span>
                        <span class="minus"></span> 
                    </div>
                </div>
                <div class="basket_table-body_item">Стоимость</div>
                <div class="basket_table-body_item">Х</div>
            </div>

            <div class="basket_table-footer">
                <div></div>
                <div></div>
                <div></div>
                <div>Итого:</div>
                <div class="summary">1256489400 RUB</div>
                <div></div>
            </div>
        </div>
        <form>
            <h2>Адрес досавки</h2>
            <h3>все поля обязатеьны для заполнения</h3>

            <label>
                <div>Выберите вариант доставки</div>
                <select>
                    <option>Курьерская службф - 500 руб</option>
                    <option> Самовызов - 250 руб</option>
                    <option>Почта Россия - 150 руб</option>
                </select>
            </label>

            <label for="first_name">
                <div>Имя</div>
                <input type="text" id="first_name" name="first_name"/>
            </label>
            <label for="last_name">
                <div>Фамилия</div>
                <input type="text" id="last_name" name="last_name"/>
            </label>
            <label for="address">
                <div>Адрес</div>
                <input type="text" id="address" name="address"/>
            </label>
            <label for="city">
                <div>Город</div>
                <input type="text" id="city" name="city"/>
            </label>
            <label for="zip_code">
                <div>Индекс</div>
                <input type="text" id="zip_code" name="zip_code"/>
            </label>
            <label for="phone">
                <div>Телефон</div>
                <input type="text" id="phone" name="phone"/>
            </label>
            <label for="email">
                <div>Email</div>
                <input type="text" id="email" name="email"/>
            </label>
        
        </form>
    </div>

</template>

<script>
export default {
        name: "Basket",
    }

</script>

<style scoped>

    .basket h2{
        text-align: center;
        margin-top: 6rem;
        margin-bottom: .6rem;
        text-transform: uppercase;
        font-size: 2rem;
    }
    .basket h3{
        text-align: center;
        color: grey;
        font-style: italic;
        margin-top: 0;
    }
    .basket_table{
        margin-top: 5rem;
        color: grey;
        display:table;
        width: 100%;
        border-collapse: collapse;
    }
    .basket .basket_table .basket_table-head{
        display: table-row;
    }
    .basket .basket_table .basket_table-head .basket_table-head_item{
        display: table-cell;
        width: calc(100% / 6);
        
        border-bottom: 2px solid lightgrey;
        padding-bottom: 10px;
    }
    .basket .basket_table .basket_table-head .basket_table-head_item:not(:last-child){
        margin-right: 30px;
    }
    .biggest{
        width: 50% !important;
    }
    .basket .basket_table .basket_table-body{
        display: table-row;
    }
    .basket .basket_table .basket_table-body .basket_table-body_item{
        display:table-cell;
        width: calc(100% / 6);
        border-bottom: 2px solid lightgrey;
        padding-bottom: 10px;
    }
    .basket .basket_table .basket_table-body .basket_table-body_item:first-child{
        display:flex;
        height: 95px;
        align-items: center;
        padding: auto;
        justify-content: center;
        width: 100%;
        margin: 5px;

    }
    /*.basket .basket_table .basket_table-body .basket_table-body_item{
     color: black;
     }*/
    .basket .basket_table .basket_table-body .basket_table-body_item :last-child{
        text-align: center;
    }
    .basket .basket_table .basket_table-body .basket_table-body_item .title{
        color: black;
        text-transform: uppercase;
        
    }
    .basket .basket_table .basket_table-body .basket_table-body_item .vender_code{
        font-size: .8rem;
    }
    .basket .basket_table .basket_table-body .basket_table-body_item input{
        border: none;

    }
    .basket .basket_table .basket_table-body .basket_table-body_item input:focus{
        outline: none;
    }
    .basket .basket_table .basket_table-body .basket_table-body_item .control{
        display: flex;
        flex-direction: column;

    }
    .basket .basket_table .basket_table-body .basket_table-body_item .control {

    }
    .basket .basket_table .basket_table-footer{
        display: table-row;
        background-color: rgba(27, 70, 80, .1);
    }
    .basket .basket_table .basket_table-footer div{
        display: table-cell;
        padding: 10px 0;
    }
    .basket .basket_table .basket_table-footer div.summary{
        color: orange;
        font-weight: bold;
    }



</style>