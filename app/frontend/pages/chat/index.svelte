<script>
  export let user;

  import { createConsumer } from "@rails/actioncable";
  const consumer = createConsumer();
  let chatChannel;
  let connected = false;
  $: messages = [];

  const received = (data) => {
    console.log("received: Got Data!");
    messages = [...messages, data];
    console.log(messages);
  };

  const cleanup = () => {
    if (chatChannel != null && consumer != null) {
      consumer.subscriptions.remove(chatChannel);
      chatChannel = null;
    }
  };

  const connect = () => {
    cleanup();
    chatChannel = consumer.subscriptions.create(
      { channel: "ChatChannel", user },
      {
        initialized() {
          connected = true;
          console.log("subscription created");
        },
        connected() {
          console.log("we are connected to chats");
          chatChannel.send({ from: user, body: "Is this thing on!?!?!" });
        },
        disconnected() {
          console.log("no longer connected to chats");
        },
        received,
      }
    );
  };

  const disconnect = () => {
    cleanup();
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
</div>
<div class="p-4 mx-auto">
  <div class="flex flex-col">
    {#each messages as msg}
      <div class="p1">From: {msg.from}. {msg.body}</div>
    {/each}
  </div>
</div>

<style>
</style>
