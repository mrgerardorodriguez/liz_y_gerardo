require Rails.root.join('config/environments/production.rb')

LizYGerardo::Application.configure do
  # Override production settings here if needed

  # Suggested when installing devise
  # Also needs to be set in production env
  # In production :host should be the actual host of your application
  config.action_mailer.default_url_options = { :host => "lizygerardo-staging.herokuapp.com" }

end