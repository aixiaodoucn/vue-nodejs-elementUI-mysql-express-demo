'use strict'
const merge = require('webpack-merge')
const prodEnv = require('./prod.env')

module.exports = merge(prodEnv, {
  NODE_ENV: '"development"',
  EVN_CONFIG: '"dev"',
  EVN_AR: '"http://localhost:3000"',
  // EVN_AR: '"http://119.23.191.165:3000"',
  EVN_EN: '"false"'
})
