import LayoutMain from './lib/views/layouts/main.svelte';
import Home from './lib/views/Home.svelte';
import Privacy from './lib/views/Privacy.svelte';
import Login from './lib/views/Login.svelte';

export const routes = [
    {
        name: '/',
        component: Home,
        layout: LayoutMain,
    },
    {
        name: '/privacy',
        component: Privacy,
        layout: LayoutMain,
    },
    {
        name: '/login',
        component: Login,
        layout: LayoutMain,
    }
];