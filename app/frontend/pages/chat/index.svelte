<script>
  export let user;

  import { createConsumer } from "@rails/actioncable";
  const consumer = createConsumer();

  let connected = false;
  let messages = [];

  const connect = () => {
    consumer.subscriptions.create(
      { channel: "ChatChannel", user },
      {
        initialized() {
          connected = true;
          console.log("subscription created");
        },
        connected() {
          console.log("we are connected to chats");
        },
        disconnected() {
          console.log("no longer connected to chats");
        },
        received(data) {
          console.log("Got Data!");
          messages.push(data);
        },
      }
    );
  };

  const disconnect = () => {
    consumer.disconnect();
    connected = false;
  };
</script>

<div class="p-4 mx-auto text-center">
  <h1 class="text-lg mb-2">Get Chatting!</h1>
  <p>You are <code class="code">{user}</code></p>
  <p class="mt-4">
    {#if connected}
      <button class="btn btn-primary px-4" on:click={disconnect}
        >Disconnect</button
      >
    {:else}
      <button class="btn btn-primary px-4" on:click={connect}>Connect</button>
    {/if}
  </p>
  <div class="px-6 mx-auto flex flex-cols-1">
    {#each messages as msg}
      <div class="msg">{msg}</div>
    {/each}
  </div>
</div>
