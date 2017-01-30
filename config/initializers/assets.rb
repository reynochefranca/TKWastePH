# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# CSS Global
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( normalize.css )
Rails.application.config.assets.precompile += %w( jquery-ui.css )

# CSS Local
Rails.application.config.assets.precompile += %w( new-discharge-business-reg.css )
Rails.application.config.assets.precompile += %w( contracts.css )
Rails.application.config.assets.precompile += %w( contracts01.css )
Rails.application.config.assets.precompile += %w( master.css )
Rails.application.config.assets.precompile += %w( permit-master.css )
Rails.application.config.assets.precompile += %w( roles-master.css )
Rails.application.config.assets.precompile += %w( places-master.css )
Rails.application.config.assets.precompile += %w( edi-users-master.css )
Rails.application.config.assets.precompile += %w( company-reg.css )
Rails.application.config.assets.precompile += %w( select2.css )
Rails.application.config.assets.precompile += %w( manifests.css )

# JS Global
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( jquery-ujs.js )
Rails.application.config.assets.precompile += %w( jquery-turbolink.js )
Rails.application.config.assets.precompile += %w( jquery-1.12.4.min.js )
Rails.application.config.assets.precompile += %w( modal.js )
Rails.application.config.assets.precompile += %w( navi.js )

# JS Local
Rails.application.config.assets.precompile += %w( jquery-colorbox.min.js )
Rails.application.config.assets.precompile += %w( jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( select2.js )

