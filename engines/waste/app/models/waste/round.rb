module Waste
  class Round < ActiveRecord::Base
    # attr_accessible :property
    has_many :round_manifests
    has_many :containers, :through => :round_manifests

    has_many :round_properties
    has_many :properties, :through => :round_properties

    accepts_nested_attributes_for :containers
  end
end
