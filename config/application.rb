require_relative 'boot'
require 'rails'
require_relative '../app/middleware/company_middleware'
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

    config.middleware.use CompanyMiddleware
    # config.middleware.use ActionDispatch::Flash
    # config.middleware.use Rack::MethodOverride
    # config.middleware.use ActionDispatch::Cookies
    # config.middleware.use ActionDispatch::Session::CookieStore
    %w(
      active_record/railtie
      action_controller/railtie
      action_view/railtie
      action_mailer/railtie
      active_job/railtie
      action_cable/engine
      rails/test_unit/railtie
      sprockets/railtie
    ).each do |railtie|
      begin
        require railtie
      rescue LoadError
      end
    end


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
