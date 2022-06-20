<script>
  import logo from "./assets/svelte.png";
  import Counter from "./lib/Counter.svelte";
  import { darkmode } from "./lib/stores/darkmode";
</script>

<main class:dark={$darkmode}>
  <div
    id="root"
    class="bg-nuetral-300 text-zinc-800 dark:bg-zinc-800 dark:text-slate-200"
  >
    <img src={logo} alt="Svelte Logo" />
    <h1>Hello world!</h1>

    <button on:click={() => darkmode.toggle()}>Toggle Dark Mode</button>

    <Counter />

    <p>
      Visit <a href="https://svelte.dev">svelte.dev</a> to learn how to build Svelte
      apps.
    </p>

    <p>
      Check out <a href="https://github.com/sveltejs/kit#readme">SvelteKit</a> for
      the officially supported framework, also powered by Vite!
    </p>
  </div>
</main>

<style>
  button {
    display: block;
    border: 2px;
    border-color: aliceblue;
    border-radius: 0.5em;
  }
</style>
