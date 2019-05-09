require_relative 'boot'
require 'rails/all'
require 'payjp'


class MyPayjp
  def self.payjp(amount,id)
    Payjp::Charge.create(
      amount:amount,
      customer:id,
      currency:'jpy',
      )
  end

  def self.register_card(id,token)
    Payjp::Customer.create(
    id:id,
    card:token,
    )
  end

end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
module FreemarketSample49b
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
