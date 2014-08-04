require 'rest_client'

class WasteCollectionsController < ApplicationController

  URL = 'https://www2.guildford.gov.uk/Services/CustomerPoint/Cleansing/Property/100061403569/ActiveCollections'

  api :GET, '/waste_collections'
  respond_to :json

  def index
    response = RestClient.get URL
    data = Nokogiri::XML response

    # puts data.css("Collection").map {|node| node.children.text}

    c = WasteCollection.new
    c.day = 'Monday'
    @waste_collections = []
    data.css("Collection").each do |collection_in|
      collection = WasteCollection.new
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
