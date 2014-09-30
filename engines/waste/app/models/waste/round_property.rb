module Waste
  class RoundProperty < ActiveRecord::Base
    belongs_to :round
    belongs_to :property
  end
end
