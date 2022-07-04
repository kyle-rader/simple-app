<script>
    let email = "";
    let password = "";

    const login = () => {
        alert(`email is '${email}'\npassword is '${password}'`);
    };
</script>

<div class="container w-80 mx-auto flex flex-col gap-4 my-10">
    <h2 class="text-center text-xl">Login</h2>

    <label class="">
        <span class="block mb-2">Email</span>
        <input
            bind:value={email}
            type="text"
            placeholder="Email Address"
            class="w-full rounded-lg bg-light-hard dark:bg-dark0-soft"
        />
    </label>

    <label class="">
        <span class="block mb-2">Password</span>
        <input
            bind:value={password}
            type="password"
            placeholder="Password"
            class="w-full rounded-lg bg-light-hard dark:bg-dark0-soft"
        />
    </label>

    <button on:click={login} class="rounded-lg bg-blue-bright dark:bg-blue p-2"
        >Login</button
    >
</div>
