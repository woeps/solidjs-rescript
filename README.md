## NOTE
This repository contains **experimental** code to enable the usage of [SolidJs](solidjs.com) with the [rescript](rescript-lang.org) language.

Once (if at all) a feasable and developer friendly set of bindings has been worked out, they will be published as a separate npm package.

------

`JSX` is only supported for custom components (e.g. `<App />`, if the module `App` contains a function `createElement`). `<div>..</div>` is not easily possible without developing a ppx. Therefore we need to use [Hyperscript](https://github.com/solidjs/solid/tree/main/packages/solid/h).

## Usage

```bash
$ npm install
```

## Available Scripts

In the project directory, you can run:

### `npm start`

Compiles rescript files on change and runs the app in the development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br>

### `npm run bundle`

Builds all rescript files and bundles the app for production to the `dist` folder.<br>
It correctly bundles Solid in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br>
Your app is ready to be deployed!

## Deployment

You can deploy the `dist` folder to any static host provider (netlify, surge, now, etc.)
