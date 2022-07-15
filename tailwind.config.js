const colors = require('./app/frontend/colors.json');

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./app/**/*.{html,erb,js,svelte}"
  ],
  theme: {
    extend: {
      colors,
    },
  },
  plugins: [],
}
