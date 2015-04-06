axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
contentful   = require 'roots-contentful'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore']

  stylus:
    use: [axis(), rupture(), autoprefixer()]

  extensions: [
    contentful
      access_token: '<%= 52db1d07bf02303addee5285b6b56f554dd6efd400943a0f82418acd330c4b8c %>'
      space_id: '<%= 3xd90w541h4n %>'
      content_types: [
        # {
        #   id: 'eR4h8IGlzyq6Ck2AueCSm'                    # ID of your content type
        #   name: 'posts'                 # data will be made available through this key on the `contentful` object in your templates
        #   filters: {}                   # passes filters to the call to contentful's API, see contentful's docs for more info
        #   template: 'path/to/template'  # if present a single page view will be created for each entry in the content type
        #   path: (entry) ->              # override function for generating single page file path, passed in the entry object
        # }
      ]
  ]