<script>
    import keys from "lodash-es/_baseKeys";
    import ColorRow from "./ColorGrid/ColorRow.svelte";

    const colorMap = {
        "dark0-hard": "#1d2021",
        dark0: "#282828",
        "dark0-soft": "#32302f",
        dark1: "#3c3836",
        dark2: "#504945",
        dark3: "#665c54",
        dark4: "#7c6f64",
        "gray-245": "#928374",
        "gray-244": "#928374",
        "light0-hard": "#f9f5d7",
        light0: "#fbf1c7",
        "light0-soft": "#f2e5bc",
        light1: "#ebdbb2",
        light2: "#d5c4a1",
        light3: "#bdae93",
        light4: "#a89984",
        "red-bright": "#fb4934",
        "green-bright": "#b8bb26",
        "yellow-bright": "#fabd2f",
        "blue-bright": "#83a598",
        "purple-bright": "#d3869b",
        "aqua-bright": "#8ec07c",
        "orange-bright": "#fe8019",
        red: "#cc241d",
        green: "#98971a",
        yellow: "#d79921",
        blue: "#458588",
        purple: "#b16286",
        aqua: "#689d6a",
        orange: "#d65d0e",
        "red-faded": "#9d0006",
        "green-faded": "#79740e",
        "yellow-faded": "#b57614",
        "blue-faded": "#076678",
        "purple-faded": "#8f3f71",
        "aqua-faded": "#427b58",
        "orange-faded": "#af3a03",
    };
    let all = keys(colorMap);
    let base = ["red", "green", "yellow", "blue", "purple", "aqua", "orange"];
    let grays = ["gray-245", "gray-244"];
    let lights = all.filter((x) => x.startsWith("light"));
    let darks = all.filter((x) => x.startsWith("dark"));
    let brights = all.filter((x) => x.endsWith("bright"));
    let faded = all.filter((x) => x.endsWith("faded"));
</script>

<div class="grid grid-cols-3 md:grid-cols-5 lg:grid-cols-7">
    <ColorRow ids={brights} {colorMap} fg="dark0" />
    <ColorRow ids={base} {colorMap} fg="dark0" />
    <ColorRow ids={faded} {colorMap} fg="dark0" />
    <ColorRow ids={lights} {colorMap} fg="dark0" />
    <ColorRow ids={darks} {colorMap} fg="light0" />
    <ColorRow ids={grays} {colorMap} fg="light0" />
</div>

<style>
</style>
