
# chmod 744 install.sh

#Installs webpack 4.x | babel-loader 8.x | babel 7.x
npm install --save-dev webpack webpack-cli html-webpack-plugin
npm install --save-dev babel-loader @babel/core @babel/preset-env @babel/plugin-syntax-dynamic-import
npm install --save-dev cross-env css-loader node-sass sass-loader
npm install --save-dev vue-loader

#
npm install --save-dev node-sass-magic-importer

# To extract CSS from JS
npm install --save-dev mini-css-extract-plugin

#webpack development server with hot reloading
npm install --save-dev webpack-serve opn

# CSS minification
npm install --save-dev optimize-css-assets-webpack-plugin uglifyjs-webpack-plugin

# production server
npm install --save-dev express