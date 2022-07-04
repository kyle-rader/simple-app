<script>
    import { Navigate } from "svelte-router-spa";
    export let name;
    export let path;
    export let active;
    export let _class;
</script>

<Navigate to={path}>
    <div
        class="p-2 dark:hover:bg-blue-faded hover:bg-blue-bright {_class}"
        class:dark:bg-blue-faded={active}
        class:bg-blue-bright={active}
    >
        {name}
    </div>
</Navigate>
