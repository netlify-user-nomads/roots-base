axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
contentful = require 'roots-contentful'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee', out: 'js/build.js', minify: true, hash: true),
    css_pipeline(files: 'assets/css/*.styl', out: 'css/build.css', minify: true, hash: true),
    contentful
      access_token: '52db1d07bf02303addee5285b6b56f554dd6efd400943a0f82418acd330c4b8c'
      space_id: '3xd90w541h4n'
      content_types:
        blog_posts:
          id: 'eR4h8IGlzyq6Ck2AueCSm'
          template: 'views/_post.jade'
          path: (e) -> "blogging/#{e.category}/#{slugify(e.title)}"
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
