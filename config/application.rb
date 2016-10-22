require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GozlemeWeb
  class Application < Rails::Application
    config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "www.familygozleme.com",
  :user_name            => "ramazan@familygozleme.com",
  :password             => "Ramazanyagci1",
  :authentication       => :plain,
  :enable_starttls_auto => true
}

config.action_mailer.default_url_options = {
  :host => "www.familygozleme.com"
}
    config.active_record.raise_in_transactional_callbacks = true
  end
end
