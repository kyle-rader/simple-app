<script>
    import InputText from "../comp/Form/InputText.svelte";
    let email = "";
    let password = "";

    const login = () => {
        alert(`email is '${email}'`);
        alert(`password is '${password}'`);
    };
</script>

<div class="container w-80 mx-auto flex flex-col gap-4 my-10">
    <h2 class="text-center text-xl">Login</h2>

    <InputText name="Email" bind:value={email} placeholder="Email Address" />
    <InputText name="Password" bind:value={password} placeholder="Password" />

    <button on:click={login} class="rounded-lg bg-blue p-2">Login</button>
</div>
