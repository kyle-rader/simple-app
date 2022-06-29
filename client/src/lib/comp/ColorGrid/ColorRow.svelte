<script>
    export let colorMap;
    export let ids;
    export let fg = "dark0";
</script>

{#each ids as id}
    <div
        class="color-square p-6 display-block text-center"
        style:background={colorMap[id]}
        style:color={colorMap[fg]}
    >
        <span>{id}</span> <br />
        <code>{colorMap[id]}</code>
    </div>
{/each}

<style>
    .color-square {
        font-family: "Courier New", Courier, monospace;
    }
</style>
