# Simple App

> *For some definition of simple*

The goal of this repo is to build a modern web application template that uses [Rust] on the server and [Svelte] in the browser. The priorities are performance, simplicity, usability, and developer experience.

## The Stack
Every modern web app has a stack because we have things to do and places to be, so you can't be building everything from scratch. This means we make choices about where to innovate and where to used existing software.

### Server
* **Web Server**: [Rust] using [Axum], a web server built on the [tokio] stack of projects (like [Tower] and [Hyper])
* **Database**: TBD (but probably [PostgreSQL])
* **DB Migration Manager**: TBD
* **Build Tooling**: [Cargo].

### Client
* **UI Framework**: [Svelte] - which is a JS/HTML/CSS compiler that produces small efficient JS for interactive apps.
* **Styling**: [TailWindCSS] - A utility first, composable, CSS framework where we only end up with the CSS we actually use in our distributions.
* **Build Tooling**: [Vite] + [Svelte] + [AutoPrefixer/PostCSS]
  
## Road Map
### Client
* [x] create client application
* [x] site wide dark mode by default, please it's 2022.
* [ ] page routing
* [ ] navigation bar
* [ ] pay-for-play icons (HeroIcons or FontAwesome)
  
### Server
* [ ] create server
* [ ] main route to serve index.html
* [ ] api route namespace
* [ ] demo routes
* [ ] demo web sockets

### General
* [ ] Azure Deployment guide
* [ ] AWS Deployment guide?
* [ ] Digital Ocean Deployment guide?


[Rust]:https://www.rust-lang.org/
[Cargo]: https://doc.rust-lang.org/cargo/
[Axum]:https://github.com/tokio-rs/axum
[Tokio]:https://tokio.rs/
[Tower]:https://github.com/tower-rs/tower
[Hyper]:https://github.com/hyperium/hyper
[PostgreSQL]:https://www.postgresql.org/
[Svelte]:https://svelte.dev/
[TailWindCSS]: https://tailwindcss.com/
[Vite]: https://vitejs.dev/
[AutoPrefixer/PostCSS]: https://github.com/postcss/autoprefixer