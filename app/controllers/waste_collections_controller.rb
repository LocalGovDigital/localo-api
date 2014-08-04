require 'rest_client'

# TODO: move to model?
class Collection
  attr :day, true
  attr :last_collection, true
  attr :end_date, true
  attr :frequency, true
end

class WasteCollectionsController < ApplicationController

  URL = 'https://www2.guildford.gov.uk/Services/CustomerPoint/Cleansing/Property/100061403569/ActiveCollections'

  api :GET, '/waste_collections'
  respond_to :json
  def index
    response = RestClient.get URL
    data = Nokogiri::XML response

    # puts data.css("Collection").map {|node| node.children.text}

    c = Collection.new
    c.day = 'Monday'
    @waste_collections = []
    data.css("Collection").each do |collection_in|
      collection = Collection.new
      collection.day = collection_in.css('Day').text
      collection.last_collection = collection_in.css('LastCollection').text
      collection.end_date = collection_in.css('EndDate').text
      collection.frequency = collection_in.css('Frequency').text
      @waste_collections.push collection
    end
  end

  api :GET, '/waste_collections/:id'
  param :id, :number
  def show
  end
end
