<script>
  import { createEventDispatcher } from "svelte";
  let dispatch = createEventDispatcher();

  let value = "";

  function handleSubmit() {
    dispatch("send", {
      text: value,
    });
    value = "";
  }
</script>

<form class="mx-auto m-2" on:submit|preventDefault={handleSubmit}>
  <input
    class="bg-dark0-soft light0-hard p-1 rounded-md"
    type="text"
    bind:value
  />
</form>
