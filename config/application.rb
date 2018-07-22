require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bearblocks
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.autoload_paths += ["#{config.root}/lib"]
    config.eager_load_paths += ["#{config.root}/lib"]
    config.paths.add 'offending/file/parent/directory', eager_load: true


    config.middleware.use ActionDispatch::Flash
    config.middleware.use Rack::MethodOverride
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore



    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
