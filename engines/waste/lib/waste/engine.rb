module Waste
  class Engine < ::Rails::Engine
    isolate_namespace Waste

    config.generators do |g|
      g.template_engine :haml
    end

  end
end

