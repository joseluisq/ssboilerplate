# Custom Compass configuration file v1.0.0

# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "css"
sass_dir = "scss"
images_dir = "img"
fonts_dir = "css/fonts"
javascripts_dir = "js"
# - Default output
output_style = (environment == :production ? :compressed : :expanded)
# - Production output
# output_style = :compressed


# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed


# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true


# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass


# Development is the default enviroment. When compiling for prouction
# this should be flagged as :production. This can be done through the command line
# with the following sentence:
#
# compass compile -e production --force


# Plugins and helpers
#####################

# Autoprefixer
# You need to install `autoprefixer` plugin for compass before:
# sudo gem install autoprefixer-rails

require 'autoprefixer-rails'

on_stylesheet_saved do |file|
  css = File.read(file)
  
  File.open(file, 'w') do |io|
    io << AutoprefixerRails.process(css)
  end

end

# Helper functions
require File.join(File.dirname(__FILE__), 'helpers.rb')