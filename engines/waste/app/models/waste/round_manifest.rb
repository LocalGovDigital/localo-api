module Waste
  class RoundManifest < ActiveRecord::Base
    belongs_to :round
    belongs_to :container
  end
end
