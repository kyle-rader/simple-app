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
    {#each links as link}
        <NavItem {...link} active={currentRoute.path == link.path} />
    {/each}
</nav>
