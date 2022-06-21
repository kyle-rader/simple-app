<script>
  let count = 0;
  const increment = () => {
    count += 1;
  };
</script>

<button
  on:click={increment}
  class="border rounded-md px-2 py-1 hover:bg-blue-faded"
>
  Clicks: {count}
</button>

<style>
</style>
