
# chmod 744 install.sh

#Installs webpack 4.x | babel-loader 8.x | babel 7.x
npm install --save-dev webpack webpack-cli html-webpack-plugin
npm install --save-dev babel-loader @babel/core @babel/preset-env @babel/plugin-syntax-dynamic-import
npm install --save-dev cross-env
npm install --save-dev vue-loader vue-template-compiler

# CSS SASS
npm install --save-dev css-loader node-sass sass-loader
npm install --save-dev optimize-css-assets-webpack-plugin uglifyjs-webpack-plugin
npm install --save-dev node-sass-magic-importer
# To extract CSS from JS
npm install --save-dev mini-css-extract-plugin

#webpack development server with hot reloading
npm install --save-dev webpack-serve opn

# production server
npm install --save-dev express

npm install vue vue-router
#Don't take reset-css v4 yet
# npm install normalize.css
# npm install reset-css@^3.0.0
npm install purecss
