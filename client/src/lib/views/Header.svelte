<script>
    import NavItem from "../comp/Nav/NavItem.svelte";
    import DarkmodeToggle from "../comp/DarkmodeToggle.svelte";
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

    <div class="w-1/2 flex flex-row flex-row-reverse">
        <NavItem
            name="Login"
            path="/login"
            active={currentRoute.path == "/login"}
            _class="pr-4"
        />
        <DarkmodeToggle _class="px-2" />
    </div>
</nav>
