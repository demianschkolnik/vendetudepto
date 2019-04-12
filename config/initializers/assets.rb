# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( plugins.js )
Rails.application.config.assets.precompile += %w( app.js )
Rails.application.config.assets.precompile += %w( index.js )
Rails.application.config.assets.precompile += %w( helper.css )
Rails.application.config.assets.precompile += %w( fonts-icons.css )
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf|otf|woff2)\z/
Rails.application.config.assets.precompile += %w( inline_validations.js.coffee )
Rails.application.config.assets.precompile += %w( jquery.geocomplete.js )
Rails.application.config.assets.precompile += %w( jquery.geocomplete.min.js )
Rails.application.config.assets.precompile += %w( direccion.js )
Rails.application.config.assets.precompile += %w( vendetudepto/new-age.css )
Rails.application.config.assets.precompile += %w( vendetudepto/simple-line-icons.css )
Rails.application.config.assets.precompile += %w( vendetudepto/device-mockups.min.css )
Rails.application.config.assets.precompile += %w( new-age.min.js )
Rails.application.config.assets.precompile += %w( jquery.easing.min.js )