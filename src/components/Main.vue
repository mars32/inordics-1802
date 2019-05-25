<template>

    <div>


        <Banner></Banner>
        <ListTile></ListTile>

    </div>

</template>

<script>

    import Banner from './Banner';
    import ListTile from './ListTile';

    export default {
        name: 'Main',
        components: {Banner, ListTile}
    };

</script>

<style scoped>

</style>