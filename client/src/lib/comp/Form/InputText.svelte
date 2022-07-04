<script>
    export let value = "";
    export let placeholder = "";
    export let name = "";
</script>

<label class="w-auto">
    <span class="block mb-2">{name}</span>
    <input
        type="text"
        bind:value
        class="rounded-lg bg-light0-hard dark:bg-dark0-soft w-full"
        {placeholder}
    />
</label>
