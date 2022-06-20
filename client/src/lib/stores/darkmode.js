import { writable } from 'svelte/store';

// TODO: Fetch initial value from session store.
const { subscribe, update } = writable(true);

export const darkmode = {
    subscribe,
    toggle: () => {
        update(val => !val);
    }
}