<script>
    import keys from "lodash-es/_baseKeys";
    import { onMount } from "svelte";

    let colors = {};
    let ids = [];

    import("./../../colors.cjs")
        .then((mod) => {
            console.log(mod);
            colors = mod.colors;
            ids = keys(colors);
        })
        .catch((e) => console.log(e));
</script>

<div class="grid grid-cols-5">
    {#each ids as id}
        <div>
            {id}: <code>{colors[id]}</code>
        </div>
    {:else}
        <div>Loading colors</div>
    {/each}
</div>

<style>
</style>
