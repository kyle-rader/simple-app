<script>
    import { Route } from "svelte-router-spa";
    import { darkmode } from "../../store/darkmode";
    import Header from "../Header.svelte";
    import Footer from "../Footer.svelte";

    export let currentRoute;
</script>

<main class:dark={$darkmode}>
    <div
        id="root"
        class="flex flex-col bg-light0 text-dark0 dark:bg-dark0 dark:text-light0"
    >
        <Header {currentRoute} />
        <div class="flex-grow">
            <Route {currentRoute} />
        </div>
        <Footer />
    </div>
</main>
