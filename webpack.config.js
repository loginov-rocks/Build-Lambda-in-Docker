const path = require('path');

module.exports = {
  devtool: false,
  entry: './src/index.ts',
  externals: [
    '@aws-sdk/client-s3',
    'sharp',
  ],
  externalsType: 'node-commonjs',
  module: {
    rules: [
      {
        exclude: /node_modules/,
        test: /\.ts$/,
        use: 'babel-loader',
      },
    ],
  },
  output: {
    filename: 'index.js',
    path: path.resolve(__dirname, 'dist'),
  },
  resolve: {
    extensions: ['.js', '.ts'],
  },
  target: 'node',
};
