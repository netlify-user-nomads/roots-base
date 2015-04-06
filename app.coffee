axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.styl')
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true

contentful = require 'roots-contentful'

module.exports =
  extensions: [
    contentful
      access_token: '52db1d07bf02303addee5285b6b56f554dd6efd400943a0f82418acd330c4b8c'
      space_id: '3xd90w541h4n'
      content_types:
        post:
          id: 'eR4h8IGlzyq6Ck2AueCSm'
  ]

