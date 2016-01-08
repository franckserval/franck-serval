exports.config =
  paths:
    public: './public'
    watched: ['app']

  files:
    javascripts:
      joinTo:
        # Main
        '/js/master.js': /^(bower_components[\/\\]bootstrap|app)/
        # Vendor
        '/js/jquery.min.js': /^(bower_components[\/\\]jquery)/
        '/js/vendor/response.min.js': /^(bower_components[\/\\]responsejs)/
        '/js/vendor/head.min.js': /^(bower_components[\/\\]headjs)/
        '/js/vendor/media.match.min.js': /^(bower_components[\/\\]media-match)/

    stylesheets:
      joinTo:
        '/css/master.css': /^(bower_components[\/\\]bootstrap|app)/

  modules:
    wrapper: false
    definition: false

  conventions:
    # we don't want javascripts in asset folders to be copied like the one in
    # the bootstrap assets folder
    assets: /assets[\\/](?!javascripts)/

  plugins:
    cleancss:
      keepSpecialComments: 0
      removeEmpty: true
    sass:
      debug: 'comments'
      allowCache: true
    cssnano:
      index: true
      autoprefixer: {add:true}