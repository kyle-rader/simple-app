<script>
  import logo from "./assets/svelte.png";
  import Counter from "./lib/Counter.svelte";

  function toggle_darkmode() {
    window.document.body.classList.toggle("dark");
  }
</script>

<img src={logo} alt="Svelte Logo" />
<h1>Hello world!</h1>

<button on:click={toggle_darkmode}>Toggle Dark Mode</button>

<Counter />

<p>
  Visit <a href="https://svelte.dev">svelte.dev</a> to learn how to build Svelte
  apps.
</p>

<p>
  Check out <a href="https://github.com/sveltejs/kit#readme">SvelteKit</a> for the
  officially supported framework, also powered by Vite!
</p>

<style>
  button {
    display: block;
    border: 2px;
    border-color: aliceblue;
    border-radius: 0.5em;
  }
</style>
