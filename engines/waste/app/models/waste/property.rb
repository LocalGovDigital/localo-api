module Waste
  class Property < ActiveRecord::Base
    belongs_to :round
  end
end
