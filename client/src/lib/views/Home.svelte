<script>
    import DarkmodeToggle from "../comp/DarkmodeToggle.svelte";
    import Counter from "../comp/Counter.svelte";
    import logo from "../../assets/svelte.png";
    import ColorGrid from "../comp/ColorGrid/ColorGrid.svelte";
</script>

<div class="container text-center mx-auto lg:px-48 md:px-24 sm:px-12 px-4">
    <img src={logo} alt="Svelte Logo" class="mx-auto w-1/3" />

    <p>
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

    <p class="py-4">
        <Counter />
    </p>
    <p class="my-2">This template uses the GruvBox color scheme.</p>
    <ColorGrid />
</div>
