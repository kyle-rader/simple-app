<script>
  import logo from "./assets/svelte.png";
  import Counter from "./lib/Counter.svelte";
  import { darkmode } from "./lib/store/darkmode";
  import DarkmodeToggle from "./lib/DarkmodeToggle.svelte";
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
      <p>
        This template uses the GruvBox color scheme.
        <img
          src="https://camo.githubusercontent.com/cdb2f2e986c564b515c0c698e6c45b4ab5d725a9/687474703a2f2f692e696d6775722e636f6d2f776136363678672e706e67"
          alt="A grid of tiles showing the gruvbox color pallate and their hex rgb values."
        />
      </p>
    </div>
  </div>
</main>

<style>
  h1 {
    font-family: "Courier New", Courier, monospace;
  }
</style>
