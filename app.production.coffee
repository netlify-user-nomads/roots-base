axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
contentful   = require 'roots-contentful'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore']

  stylus:
    use: [axis(), rupture(), autoprefixer()]

