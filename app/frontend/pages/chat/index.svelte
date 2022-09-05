<script>
  export let user;

  import TextBox from "./TextBox.svelte";

  import { createConsumer } from "@rails/actioncable";
  let consumer;
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
    consumer = null;
    connected = false;
    messages = [];
  };

  const connect = () => {
    cleanup();
    consumer = createConsumer();
    chatChannel = consumer.subscriptions.create(
      { channel: "ChatChannel", user },
      {
        initialized() {
          connected = true;
          console.log("Chat Subscription created");
        },
        connected() {
          console.log("Connected to chat!");
        },
        disconnected() {
          console.log("Disconnected from chat!");
          cleanup();
        },
        received,
      }
    );
  };

  const disconnect = () => {
    cleanup();
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
      <TextBox on:send={(e) => chatChannel.send({ body: e.detail.text })} />
    {:else}
      <button class="btn btn-primary px-4" on:click={connect}>Connect</button>
    {/if}
  </p>
</div>
<div class="p-4 mx-auto">
  <div class="flex flex-col">
    {#each messages as msg}
      <div class="p1">{msg.from}: {msg.body}</div>
    {/each}
  </div>
</div>

<style>
</style>
