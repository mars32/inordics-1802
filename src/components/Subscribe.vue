<template>

    <div class="subscribe">
    
        <h2>Будь всегда в курсе выгодных предложений</h2>
        <h3>подписывайся и следи за новинками и выгодными предложениями.</h3>
        <form>
            <input type="email" name="email" v-model="email" placeholder="email"/>
            <button type="submit" :disabled="email.lenght === 0 || showError">записаться</button>
        </form>
        <div class="subscribe-error" v-show="showError">Некорректный email. Попробуйте ещё раз)</div>

    </div>

</template>

<script>
    export default {
        name: "Subscribe",
        data(){
            return{
                email: '',
                showError: false
            };
        },
        watch: {
            email(newVal, oldVal){
                console.log(oldVal);
                console.log(newVal);

                if(~newVal.indexOf('@') && newVal.indexOf('@') > 0 &&
                ~newVal.lastIndexOf('.') && newVal.lastIndexOf('.') > newVal.lastIndexOf('@') + 1 &&
                newVal.lastIndexOf('.') < newVal.length - 1 ){
                    this.showError = false;
                }
                else{
                    this.showError = true;
                }
            }
        }
        
    }
</script>

<style scoped>

    .subscribe{
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 7rem 0;
    }
    .subscribe h2{
        font-size: 2rem;
        text-transform: uppercase;
        opacity: .8;
        margin-bottom: 10px;
    }
    .subscribe h3{
        font-style: italic;
        font-size: .9rem;
        margin-top:0;
        color: grey;
    }
    .subscribe form{
        margin: 1rem auto 0;
        display: flex;
        align-items: center;
        width: 40%;

    }
    .subscribe form input{
        font-style: italic;
        margin-right: 0;
        width: 80%;
        padding: 15px;
        border-width: 1px 0 1px 1px;
        border-color: grey;
        border-style: solid;
    }
    .subscribe form button{
        height: 100%;
        margin-left: 0;
        background-color: orange;
        color: white;
        border: 1 px solid orange;
        padding: 15px;
    }

    
</style>