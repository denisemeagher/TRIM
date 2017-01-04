require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Evaluation
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # config.action_mailer.raise_delivery_errors = true
    # config.action_mailer.default_url_options = { :host => 'localhost:3000' }
    # config.action_mailer.perform_deliveries = true
    # config.action_mailer.delivery_method = :smtp
    #
    # config.action_mailer.smtp_settings = {
    # :address        => 'smtp.sendgrid.net',
    # :port           => '587',
    # :authentication => :plain,
    # :user_name      =>  ENV['SENDGRID_USERNAME'],
    # :password       =>  ENV['SENDGRID_PASSWORD'],
    # :domain         => 'localhost:3000',
    # :enable_starttls_auto => true
    # }

    config.before_initialize do
      dev = File.join(Rails.root, 'config', 'config.yml')
      YAML.load(File.open(dev)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(dev)
    end
  end
end
