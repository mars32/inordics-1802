import Vue from 'vue';
import Router from 'vue-router';
import Main from '../components/Main';
import Sections from '../components/Sections';
import Detail from '../components/Detail';
import Basket from '../components/Basket';

Vue.use(Router);

export default new Router({
    mode:'history',
    routes: [
        {
            path: '/',
            name: 'Main',
            component: Main
        },
        {
            path: '/sections',
            name: 'Sections',
            component: Sections
        },
        {
            path: '/detail/:id',
            name: 'Detail',
            component: Detail,
            props: true
        },
        {
            path: '/basket',
            name: 'Basket',
            component: Basket
        }
    ]
});