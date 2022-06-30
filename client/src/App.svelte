<script>
  import { darkmode } from "./lib/store/darkmode";
  import { Router } from "svelte-router-spa";
  import { routes } from "./routes";
</script>

<main class:dark={$darkmode}>
  <div id="root" class="bg-light0 text-dark0 dark:bg-dark0 dark:text-light0">
    <Router {routes} />
  </div>
</main>
