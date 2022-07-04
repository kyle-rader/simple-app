<script>
    import { darkmode } from "../store/darkmode";
    export let _class = "";
</script>

<button on:click={() => darkmode.toggle()} class={_class}>
    <span>{$darkmode ? "Light" : "Dark"} mode</span>
</button>
