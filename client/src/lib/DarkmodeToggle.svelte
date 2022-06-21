<script>
    import { darkmode } from "./store/darkmode";
</script>

<button on:click={() => darkmode.toggle()}>
    <span>{$darkmode ? "Light" : "Dark"} mode</span>
</button>

<style>
    button {
        margin: 0.25em;
        padding: 2px;
        border: 2px;
        border-radius: 1em;
        transition: all;
        transition-duration: 200ms;
    }

    button > * {
        display: inline;
    }
</style>
