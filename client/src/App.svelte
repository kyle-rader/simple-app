<script>
  import logo from "./assets/svelte.png";
  import Counter from "./lib/Counter.svelte";
  import { darkmode } from "./lib/store/darkmode";
  import DarkmodeToggle from "./lib/comp/DarkmodeToggle.svelte";

  import ColorGrid from "./lib/comp/ColorGrid.svelte";
</script>

<main class:dark={$darkmode}>
  <div id="root" class="bg-light0 text-dark0 dark:bg-dark0 dark:text-light0">
    <div class="container lg:px-48 md:px-24 sm:px-12 px-4">
      <img src={logo} alt="Svelte Logo" class="mx-auto w-1/3" />
      <h1 class="text-5xl text-center">Hello Simple App!</h1>

      <p class="py-4 text-center">
        <DarkmodeToggle />
        <Counter />
      </p>
      <p class="text-center">
        <span class="inline">
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
      <p class="my-2">This template uses the GruvBox color scheme.</p>
      <ColorGrid />
    </div>
  </div>
</main>

<style>
  h1 {
    font-family: "Courier New", Courier, monospace;
  }
</style>
