require_dependency "waste/application_controller"

module Waste
  class CollectionsController < ApplicationController
    before_action :set_collection, only: [:show, :edit, :update, :destroy]

    resource_description do
      name 'WasteCollection'
      short "A collection is a description of what waste is collected and when and where as a single instance."
      formats ['json', 'xml']
      api_base_url '/waste'
    end

    # GET /collections
    api :GET, '/collections'
    respond_to :json
    description 'Find all available collections'
    def index
      @collections = Collection.all
    end

    # GET /collections/1
    api :GET, '/collections/:id'
    param :id, :number
    respond_to :json
    description 'Find a collection using its id'
    def show
    end

    # GET /collections/new
    def new
      @collection = Collection.new
    end

    # GET /collections/1/edit
    def edit
    end

    # POST /collections
    api :POST, '/collections'
    respond_to :json
    description 'Create a new waste collection'
    def create
      @collection = Collection.new(collection_params)

      if @collection.save
        redirect_to @collection, notice: 'Collection was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /collections/1
    api :PUT, '/collections/:id'
    param :id, :number
    description 'Update an existing collection'
    def update
      if @collection.update(collection_params)
        redirect_to @collection, notice: 'Collection was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /collections/1
    api :DELETE, '/collections/:id'
    param :id, :number
    description 'Delete a collection by its id'
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
