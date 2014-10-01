require_dependency "waste/application_controller"

module Waste
  # Temp class to generate API output. Need to decide on how collections
  # should be modelled and when they are persisted.
  class CollectionTemp
    attr_accessor :id
    attr_accessor :date
  end

  class Api::CollectionsController < ApplicationController
    before_action :set_collection, only: [:show, :edit, :update, :destroy]

    # GET /collections
    def index
      @collections = []
      now = Time.now
      Round.all.each do |round|
        IceCube::Schedule.new(now) do |s|
          s.add_recurrence_rule(IceCube::Rule.from_yaml(round.schedule))
          s.occurrences(now + 14.days).each do |date|
            col = CollectionTemp.new
            col.id = date.to_date.jd
            col.date = date.to_s
            @collections << col
          end
        end
      end
      puts @collections
    end

    # GET /collections/1
    def show
      Collection.find(params[:id])
    end

    # GET /collections/new
    def new
      @collection = Collection.new
    end

    # GET /collections/1/edit
    def edit
    end

    # POST /collections
    def create
      @collection = Collection.new(collection_params)

      if @collection.save
        redirect_to @collection, notice: 'Collection was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /collections/1
    def update
      if @collection.update(collection_params)
        redirect_to @collection, notice: 'Collection was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /collections/1
    def destroy
      @collection.destroy
      redirect_to collections_url, notice: 'Collection was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_collection
        @collection = Collection.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def collection_params
        params.require(:collection).permit(:name)
      end
  end
end
