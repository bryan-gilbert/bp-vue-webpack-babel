const webpackDevServer = require('webpack-dev-server');
const webpack = require('webpack');
const openBrowser = require(`./lib/open-browser`);

const config = require('../webpack.config');
const options = {
	contentBase: './dist',
	hot: true,
	host: 'localhost',
	port: 5000,
	historyApiFallback: {
		index: 'index.html'
	}
};
/*
	devServer: {
		contentBase: './dist',
		hot: true,
		historyApiFallback: {
			index: 'index.html'
		}
	},
 */
webpackDevServer.addDevServerEntrypoints(config, options);
const compiler = webpack(config);
const server = new webpackDevServer(compiler, options);

server.listen(options.port, 'localhost', () => {
	console.log('dev server listening on port 5000 ', options);
	openBrowser(`http://${options.host}:${options.port}`);

});
