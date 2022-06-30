import Home from './pages/Home.svelte';
import Privacy from './pages/Privacy.svelte';

export const routes = [
    {
        name: '/',
        component: Home,
    },
    {
        name: '/privacy',
        component: Privacy,
    }
];