import LayoutMain from './lib/views/layouts/main.svelte';
import Home from './lib/views/Home.svelte';
import Privacy from './lib/views/Privacy.svelte';

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
    }
];