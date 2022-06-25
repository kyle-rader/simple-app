const colors = require('./src/colors.cjs').colors;

/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: 'class',
  content: ['./index.html', './src/**/*.{html,svelte,js,cjs}'],
  theme: {
    colors,
    extend: {},
  },
  plugins: [],
}
