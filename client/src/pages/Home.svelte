<script>
    import logo from "../assets/svelte.png";
    import Counter from "../lib/comp/Counter.svelte";
    import DarkmodeToggle from "../lib/comp/DarkmodeToggle.svelte";
    import ColorGrid from "../lib/comp/ColorGrid/ColorGrid.svelte";
</script>

<div class="container lg:px-48 md:px-24 sm:px-12 px-4">
    <img src={logo} alt="Svelte Logo" class="mx-auto w-1/3" />

    <p class="text-center">
        <span class="inline text-2xl">
            Welcome to
            <a
                href="https://github.com/kyle-rader/simple-app"
                target="_blank"
                class="inline underline"
            >
                <code>simple-app</code>
            </a>!
        </span>
    </p>

    <p class="py-4 text-center">
        <DarkmodeToggle />
        <Counter />
    </p>
    <p class="my-2">This template uses the GruvBox color scheme.</p>
    <ColorGrid />
</div>
