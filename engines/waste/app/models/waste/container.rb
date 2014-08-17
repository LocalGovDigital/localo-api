module Waste
  class Container < ActiveRecord::Base
    has_many :round_manifests
    has_many :rounds, :through => :round_manifests
  end
end
