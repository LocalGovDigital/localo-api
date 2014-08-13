# config/initializers/rabl_init.rb
require 'rabl'
Rabl.configure do |config|
    config.view_paths = [Rails.root.join('app', 'views', 'api', 'waste', 'v1')]
end
