<script>
  import logo from "./assets/svelte.png";
  import Counter from "./lib/Counter.svelte";
  import { darkmode } from "./lib/store/darkmode";
  import DarkmodeToggle from "./lib/DarkmodeToggle.svelte";
</script>

<main class:dark={$darkmode}>
  <div id="root" class="bg-light0 text-dark0 dark:bg-dark0 dark:text-light0">
    <img src={logo} alt="Svelte Logo" />
    <h1>Hello world!</h1>

    <DarkmodeToggle />
    <Counter />

    <p>
      Welcome to
      <a href="https://github.com/kyle-rader/simple-app">
        <pre>simple-app</pre>
      </a>!
    </p>
    <p>
      This template has extended the Tailwind CSS colors with the GruvBox
      colors.
      <img
        src="https://camo.githubusercontent.com/cdb2f2e986c564b515c0c698e6c45b4ab5d725a9/687474703a2f2f692e696d6775722e636f6d2f776136363678672e706e67"
        alt="A grid of tiles showing the gruvbox color pallate and their hex rgb values."
      />
    </p>
  </div>
</main>

<style>
</style>
