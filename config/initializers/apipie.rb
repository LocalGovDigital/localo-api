Apipie.configure do |config|
  config.app_name                = "Localo"
  config.api_base_url            = ""
  config.doc_base_url            = "/docs"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/engines/**/app/controllers/**/*.rb"
end
