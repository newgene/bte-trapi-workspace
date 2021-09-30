const path = require('path');
const {IgnorePlugin} = require('webpack');
var nodeExternals = require("webpack-node-externals")
const {DefinePlugin} = require('webpack');

const optionalPlugins = [];
if (process.platform !== "darwin") {
  optionalPlugins.push(new IgnorePlugin({resourceRegExp: /^fsevents$/}));
}

module.exports = (env) => {

  return {
    entry: "./packages/@biothings-explorer/bte-trapi/src/server.js",
    target: "node",
    mode: "production",
    devtool: 'source-map',
    externals: nodeExternals(),
    resolve: {
      // modules: [__dirname, 'node_modules'],
      roots: [path.resolve('./packages/@biothings-explorer/bte-trapi')]
    },
    module: {
      rules: [
        {
          test: /\.m?js$/,
          exclude: /node_modules/,
          use: {
            loader: "babel-loader",
          },
        },
        {test: /\.json$/, loader: 'json'},
      ],
    },
    optimization: {
      minimize: false
    },
    output: {
      strictModuleErrorHandling: true,
      filename: 'bundle.js',
      path: path.resolve(__dirname, "./packages/@biothings-explorer/bte-trapi/src"),
      environment: {
        // ...
        arrowFunction: false, // <-- this line does the trick
      },
    },
    plugins: [
      ...optionalPlugins,
      new DefinePlugin({
        'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV)
      })
    ],
  }
};
