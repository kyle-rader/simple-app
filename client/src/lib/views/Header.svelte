<script>
    import NavItem from "../comp/Nav/NavItem.svelte";

    export let currentRoute;

    const links = [
        {
            name: "Home",
            path: "/",
        },
        {
            name: "Privacy",
            path: "/privacy",
        },
    ];
</script>

<nav class="flex">
    <div class="w-1/2 flex flex-row">
        {#each links as link}
            <NavItem {...link} active={currentRoute.path == link.path} />
        {/each}
    </div>

    <div class="w-1/2 flex flex-row flex-row-reverse pr-2">
        <NavItem
            name="Login"
            path="/login"
            active={currentRoute.path == "/login"}
        />
    </div>
</nav>
